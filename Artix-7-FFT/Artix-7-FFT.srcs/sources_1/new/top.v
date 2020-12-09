`default_nettype none

module top (
	    input wire 	       clk_100MHz,
	    input wire [15:0]  SW, 
	    input wire 	       BTNC,
	    output wire [3:0]  VGA_R, 
	    output wire [3:0]  VGA_B, 
	    output wire [3:0]  VGA_G,
	    output wire        VGA_HS, 
	    output wire        VGA_VS,
	    input wire 	       adc_sd,
	    output wire        adc_cs,
	    output wire        adc_clk
    );

    // SETUP CLOCKS
    // 104Mhz clock for XADC and primary clock domain
    // It divides by 4 and runs the ADC clock at 26Mhz
    // And the ADC can do one conversion in 26 clock cycles
    // So the sample rate is 1Msps (not posssible w/ 100Mhz)
    // 65Mhz for VGA Video
   wire 	       clk_104MHz, clk_65MHz, clk_16MHz;
   clk_wiz_0 clockgen(
		      .clk_in1(clk_100MHz),
		      .clk_out1(clk_104MHz),
		      .clk_out2(clk_65MHz),
		      .clk_out3(clk_16MHz)
		      );

   // INSTANTIATE XVGA SIGNALS (1024x768)
   wire [10:0] 	       hcount;
   wire [9:0] 	       vcount;
   wire 	       hsync, vsync, blank;
   xvga xvga1(
              .vclock(clk_65MHz),
              .hcount(hcount),
              .vcount(vcount),
              .vsync(vsync),
              .hsync(hsync),
              .blank(blank)
	      );
   

    wire [15:0] sample_reg;
    wire eoc, adc_reset;
    
    assign adc_reset = BTNC;

   // SERIAL ADC
   wire  adc_ready;
   
   adc adc_inst(.clk(clk_16MHz), .adc_clk(adc_clk), .adc_cs(adc_cs), .adc_sd(adc_sd), .data(sample_reg[11:0]), .ready(eoc), .reset(adc_reset));

   wire [11:0] decimated_data;
   wire        fft_ce;
   decimator decimator_0(.clk(clk_16MHz), .ce(eoc), .data_in(sample_reg[11:0]), .data_out(decimated_data), .new_sample(fft_ce));
   
   
   // INSTANTIATE SAMPLE FRAME BLOCK RAM 
   // This 16x4096 bram stores the frame of samples
   // The write port is written by osample16.
   // The read port is read by the bram_to_fft module and sent to the fft.
   wire        fwe;
   reg [11:0] fhead = 0; // Frame head - a pointer to the write point, works as circular buffer
   wire [15:0] fsample;  // The sample data from the XADC, oversampled 15x
   wire [11:0] 	faddr;    // Frame address - The read address, controlled by bram_to_fft
   wire [15:0] 	fdata;    // Frame data - The read data, input into bram_to_fft
   bram_frame bram1 (
		      .clka(clk_104MHz),
		      .wea(fwe),
		      .addra(fhead),
		      .dina(fsample),
		      .clkb(clk_104MHz),
		      .addrb(faddr),
		      .doutb(fdata));

   // SAMPLE FRAME BRAM WRITE PORT SETUP
   always @(posedge clk_104MHz) if (fft_ce) fhead <= fhead + 1; // Move the pointer every oversample
    assign fsample = {decimated_data, 4'b0}; // Pad the oversample with zeros to pretend it's 16 bits
    assign fwe = fft_ce; // Write only when we finish an oversample (every 104*16 clock cycles)

    // SAMPLE FRAME BRAM READ PORT SETUP
    // For this demo, we just need to display the FFT on 60Hz video, so let's only send the frame of samples
    // once every 60Hz. If you want to though, you can send frames much faster, one right after each other.
    // For this 4096pt fully pipelined FFT, the limit is 104Mhz/4096cycles_per_frame = 25kHz (approx)
    // The next two modules just synchronize the 60Hz vsync to the 104Mhz domain and convert it to a 1 cycle pulse.
    wire vsync_104mhz, vsync_104mhz_pulse;
    synchronizer vsync_synchronize(
        .clk(clk_104MHz),
        .in(vsync),
        .out(vsync_104mhz));

    level2pulse vsync_ltp(
        .clk(clk_104MHz),
        .level(~vsync_104mhz),
        .pulse(vsync_104mhz_pulse));

    // INSTANTIATE BRAM TO FFT MODULE
    // This module handles the magic of reading sample frames from the BRAM whenever start is asserted,
    // and sending it to the FFT block design over the AXI-stream interface.
    wire last_missing; // All these are control lines to the FFT block design
    wire [31:0] frame_tdata;
    wire frame_tlast, frame_tready, frame_tvalid;
    bram_to_fft bram_to_fft_0(
        .clk(clk_104MHz),
        .head(fhead),
        .addr(faddr),
        .data(fdata),
        .start(vsync_104mhz_pulse),
        .last_missing(last_missing),
        .frame_tdata(frame_tdata),
        .frame_tlast(frame_tlast),
        .frame_tready(frame_tready),
        .frame_tvalid(frame_tvalid)
    );

    // This is the FFT module, implemented as a block design with a 4096pt, 16bit FFT
    // that outputs in magnitude by doing sqrt(Re^2 + Im^2) on the FFT result.
    // It's fully pipelined, so it streams 4096-wide frames of frequency data as fast as
    // you stream in 4096-wide frames of time-domain samples.
    wire [23:0] magnitude_tdata; // This output bus has the FFT magnitude for the current index
    wire [11:0] magnitude_tuser; // This represents the current index being output, from 0 to 4096
    wire [11:0] scale_factor; // This input adjusts the scaling of the FFT, which can be tuned to the input magnitude.
    wire magnitude_tlast, magnitude_tvalid;
    fft_mag fft_mag_i(
        .clk(clk_104MHz),
        .event_tlast_missing(last_missing),
        .frame_tdata(frame_tdata),
        .frame_tlast(frame_tlast),
        .frame_tready(frame_tready),
        .frame_tvalid(frame_tvalid),
        .scaling(SW[15:4]),
        .magnitude_tdata(magnitude_tdata),
        .magnitude_tlast(magnitude_tlast),
        .magnitude_tuser(magnitude_tuser),
        .magnitude_tvalid(magnitude_tvalid));

    // Let's only care about the range from index 0 to 1023, which represents frequencies 0 to omega/2
    // where omega is the nyquist frequency (sample rate / 2)
    wire in_range = ~|magnitude_tuser[11:10]; // When 13 and 12 are 0, we're on indexes 0 to 1023

    // INSTANTIATE HISTOGRAM BLOCK RAM 
    // This 16x1024 bram stores the histogram data.
    // The write port is written by process_fft.
    // The read port is read by the video outputter or the SD care saver
    // Assign histogram bram read address to histogram module unless saving
    wire [9:0] haddr; // The read port address
    wire [15:0] hdata; // The read port data
    bram_fft bram2 (
        .clka(clk_104MHz),
        .wea(in_range & magnitude_tvalid),  // Only save FFT output if in range and output is valid
        .addra(magnitude_tuser[9:0]),       // The FFT output index, 0 to 1023
        .dina(magnitude_tdata[15:0]),       // The actual FFT magnitude
        .clkb(clk_65MHz),  // input wire clkb
        .addrb(haddr),     // input wire [9 : 0] addrb
        .doutb(hdata)      // output wire [15 : 0] doutb
    );

    // INSTANTIATE HISTOGRAM VIDEO
    // A simple module that outputs a VGA histogram based on
    // hcount, vcount, and the BRAM read values
    wire [2:0] hist_pixel;
    wire [1:0] hist_range;
    plotter fft_plot(
        .clk(clk_65MHz),
        .hcount(hcount),
        .vcount(vcount),
        .blank(blank),
        .range(SW[1:0]), // How much to zoom on the first part of the spectrum
        .vaddr(haddr),
        .vdata(hdata),
        .pixel(hist_pixel));


//////////////////////////////////////////////////////////////////////////////////
//  
    // VGA OUTPUT
    // Histogram has two pipeline stages so we'll pipeline the hs and vs accordingly
    reg [1:0] hsync_delay;
    reg [1:0] vsync_delay;
    reg hsync_out, vsync_out;
    always @(posedge clk_65MHz) begin
        {hsync_out,hsync_delay} <= {hsync_delay,hsync};
        {vsync_out,vsync_delay} <= {vsync_delay,vsync};
    end

   //backup assign VGA_R = {4{hist_pixel[0]}};
    //assign VGA_G = {4{hist_pixel[1]}};
    //assign VGA_B = {4{hist_pixel[2]}};
    assign VGA_R = {0};
    assign VGA_G = {4{hist_pixel[1]}};
    assign VGA_B = {0};
    assign VGA_HS = hsync_out;
    assign VGA_VS = vsync_out;
    

//
//////////////////////////////////////////////////////////////////////////////////
 
endmodule
