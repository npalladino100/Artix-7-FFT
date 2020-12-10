`default_nettype none

module top (
	    output wire [3:0] VGA_R, 
	    output wire [3:0] VGA_G,
	    output wire [3:0] VGA_B,
	    output wire       VGA_HS, 
	    output wire       VGA_VS,
	    output wire       adc_cs,
	    output wire       adc_clk,
	    input wire 	      adc_reset,
	    input wire 	      adc_sd,
	    input wire 	      clk_100MHz,
	    input wire [15:0] sw
	    );
   
   // CLOCK SETUP
   // Primary: 104 MHz
   // ADC: 16 MHz (provides 1 MSPS)
   // VGA: 65 MHz
   wire 		      clk_104MHz, clk_65MHz, clk_16MHz;
   clk_wiz_0 clkgen(
		    .clk_in1(clk_100MHz),
		    .clk_out1(clk_104MHz),
		    .clk_out2(clk_65MHz),
		    .clk_out3(clk_16MHz)
		    );
   
   // 1024x768 VGA SIGNALS
   wire [10:0] 		      hcount;
   wire [9:0] 		      vcount;
   wire 		      hsync, vsync, blank;
   xvga vga1(
             .vclock(clk_65MHz),
             .hcount(hcount),
             .vcount(vcount),
             .vsync(vsync),
             .hsync(hsync),
             .blank(blank)
	     );

   // SERIAL ADC
   wire [15:0] 		      sample_reg;
   wire 		      eoc;
   wire 		      adc_ready;
   
   adc adc_inst(
		.clk(clk_16MHz),
		.adc_clk(adc_clk),
		.adc_cs(adc_cs),
		.adc_sd(adc_sd),
		.data(sample_reg[11:0]),
		.ready(eoc),
		.reset(adc_reset)
		);

   wire [11:0] 		      decimated_data;
   wire 		      fft_ce;
   decimator decimator_0(
			 .clk(clk_16MHz),
			 .ce(eoc),
			 .data_in(sample_reg[11:0]),
			 .data_out(decimated_data),
			 .new_sample(fft_ce)
			 );
   
   
   // SAMPLE FRAME BLOCK RAM 
   // 16x4096 block ram stores the frame of samples
   wire 		      fwe;
   reg [11:0] 		      fhead = 0; // Pointer to the write point, works as circular buffer
   wire [15:0] 		      fsample;  // Decimated sample data from the ADC
   wire [11:0] 		      faddr;    // Read address, controlled by bram_to_fft
   wire [15:0] 		      fdata;    // Read data, input into bram_to_fft
   bram_frame bram1 (
		      .clka(clk_104MHz),
		      .wea(fwe),
		      .addra(fhead),
		      .dina(fsample),
		      .clkb(clk_104MHz),
		      .addrb(faddr),
		      .doutb(fdata));

   // SAMPLE FRAME BRAM WRITE PORT SETUP
   always @(posedge clk_104MHz) if (fft_ce) fhead <= fhead + 1; // Move the pointer every decimated sample
   assign fsample = {decimated_data, 4'b0}; // Pad the decimated sample to create 16-bit value
   assign fwe = fft_ce; // Write upon completing sample decimation

   // SAMPLE FRAME BRAM READ PORT SETUP
   // Synchronize 60Hz vsync to 104Mhz primary clock and convert to a 1 cycle pulse.
   wire 		      vsync_104mhz, vsync_104mhz_pulse;
   synchronizer vsync_sync(
			   .clk(clk_104MHz),
			   .in(vsync),
			   .out(vsync_104mhz));
   
   level2pulse vsync_ltp(
			 .clk(clk_104MHz),
			 .level(~vsync_104mhz),
			 .pulse(vsync_104mhz_pulse));
   
   // BRAM TO FFT MODULE
   // Read sample frames from block ram whenever start is asserted,
   // and send to the FFT block design over the AXI-stream interface.
   wire 		      last_missing;
   wire [31:0] 		      frame_tdata;
   wire 		      frame_tlast, frame_tready, frame_tvalid;
   bram_to_fft bram2fft_0(
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
   
   // 4096pt, 16bit FFT
   // sqrt(Re^2 + Im^2) provides magnitude output
   wire [23:0] 		      magnitude_tdata;
   wire [11:0] 		      magnitude_tuser;
   wire [11:0] 		      scale_factor;
   wire 		      magnitude_tlast, magnitude_tvalid;
   fft_mag fft_mag_i(
		     .clk(clk_104MHz),
		     .event_tlast_missing(last_missing),
		     .frame_tdata(frame_tdata),
		     .frame_tlast(frame_tlast),
		     .frame_tready(frame_tready),
		     .frame_tvalid(frame_tvalid),
		     .scaling(sw[15:4]),
		     .magnitude_tdata(magnitude_tdata),
		     .magnitude_tlast(magnitude_tlast),
		     .magnitude_tuser(magnitude_tuser),
		     .magnitude_tvalid(magnitude_tvalid)
		     );
   
   // Isolate range from index 0 to 1023, which represents frequencies 0 to omega/2 where omega is the nyquist frequency (sample rate / 2)
   wire 		      in_range = ~|magnitude_tuser[11:10]; // When 13 and 12 are 0, we're on indexes 0 to 1023
   
   // PLOT BLOCK RAM 
   // 16x1024 block ram for plot data
   wire [9:0] 		      haddr; // Read port address
   wire [15:0] 		      hdata; // Read port data
   bram_fft bram2 (
		   .clka(clk_104MHz),
		   .wea(in_range & magnitude_tvalid),
		   .addra(magnitude_tuser[9:0]),
		   .dina(magnitude_tdata[15:0]),
		   .clkb(clk_65MHz),
		   .addrb(haddr),
		   .doutb(hdata)
		   );
   
   // VGA PLOT GENERATOR
   wire [2:0] 		      hist_pixel;
   wire [1:0] 		      hist_range;
   plotter fft_plot(
		    .clk(clk_65MHz),
		    .hcount(hcount),
		    .vcount(vcount),
		    .blank(blank),
		    .range(sw[1:0]), // Zoom control
		    .vaddr(haddr),
		    .vdata(hdata),
		    .pixel(hist_pixel));
   

   // VGA OUTPUT
   reg [1:0] 		      hsync_delay;
   reg [1:0] 		      vsync_delay;
   reg 			      hsync_out, vsync_out;
   always @(posedge clk_65MHz) begin
      {hsync_out,hsync_delay} <= {hsync_delay,hsync};
      {vsync_out,vsync_delay} <= {vsync_delay,vsync};
   end
   
   assign VGA_R = {0};
   assign VGA_G = {4{hist_pixel[1]}}; // Green plot
   assign VGA_B = {0};
   assign VGA_HS = hsync_out;
   assign VGA_VS = vsync_out;

   
endmodule
