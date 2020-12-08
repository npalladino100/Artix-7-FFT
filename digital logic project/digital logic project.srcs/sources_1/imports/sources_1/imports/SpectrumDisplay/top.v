`default_nettype none
module top
  #(
    parameter WIDTH = 12,
    parameter BINS = 32,
    parameter PWM_WIDTH = 8
    )
   (
    input wire [2:0]   SW, //controls screen time
    input wire 	       button, 
    input wire 	       reset2,
    input wire 	       reset,
    input wire 	       ext_clk,
    output wire        adc_clk,
    output wire        adc_cs,
    output wire [7:0]  leds,
    input wire 	       adc_sd,

	   // ram2ddrxadc ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    input wire 	       clk_200MHz_i, 
    input wire 	       rst_i, 
    input wire 	       device_temp_i, 
     
	   // RAM interface
    input wire [26:0]  ram_a, 
    input wire [15:0]  ram_dq_i, 
    output wire [15:0] ram_dq_o, 
    input wire 	       ram_cen, 
    input wire 	       ram_oen, 
    input wire 	       ram_wen, 
    input wire 	       ram_ub, 
    input wire 	       ram_lb, 
     
	   // DDR2 interface
    output wire        ddr2_addr, 
    output wire        ddr2_ba, 
    output wire        ddr2_ras_n, 
    output wire        ddr2_cas_n, 
    output wire        ddr2_we_n, 
    output wire        ddr2_ck_p, 
    output wire        ddr2_ck_n, 
    output wire        ddr2_cke, 
    output wire        ddr2_cs_n, 
    output wire        ddr2_dm, 
    output wire        ddr2_odt, 
    inout wire 	       ddr2_dq, 
    inout wire 	       ddr2_dqs_p, 
    inout wire 	       ddr2_dqs_n, 
     

	   // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	   
	   ////////////////////////	VGA			///////////////
    output wire        VGA_CLK, //	VGA Clock
    output wire        VGA_HS, //	VGA H_SYNC
    output wire        VGA_VS, //	VGA V_SYNC
    output wire        VGA_BLANK, //	VGA BLANK
    output wire        VGA_SYNC, //	VGA SYNC
    output wire [9:0]  VGA_R, //	VGA Red[9:0]
    output wire [9:0]  VGA_G, //	VGA Green[9:0]
    output wire [9:0]  VGA_B, //	VGA Blue[9:0]
	   
     ////////////////	TV Decoder		////////////////////////
    output wire        TD_RESET						//	TV Decoder Reset
	   
	   );

   
   reg [17:0] 		     addr_reg; //SRAM address register
   reg [15:0] 		     data_reg;	//SRAM data register
   reg 			     Rsel;	//select the left or right 'pixel' of SRAM
   reg 			     we;	//SRAM write enable
   
   reg 			     lock;	//VGA asserts control of SRAM
   wire [19:0] 		     mVGA_ADDR;	//VGA memory address
   wire [9:0] 		     mVGA_R,mVGA_G,mVGA_B;//VGA red, green, blue inputs to VGA control
   wire [9:0] 		     coord_x,coord_y; //screen x & y coordinates (640x480)
   wire 		     VGA_CTRL_CLK;		  //vga controller clock
   wire 		     DLY_RST;				//reset delay
   
   VGA_Controller my_vga_ctrl
     (	//	Host Side
	.iCursor_RGB_EN(4'b0111),
	.iRed(mVGA_R),
	.iGreen(mVGA_G),
	.iBlue(mVGA_B),
	.oAddress(mVGA_ADDR),
	.oCoord_X(coord_x),
	.oCoord_Y(coord_y),
	
	//	VGA Side
	.oVGA_R(VGA_R),
	.oVGA_G(VGA_G),
	.oVGA_B(VGA_B),
	.oVGA_H_SYNC(VGA_HS),
	.oVGA_V_SYNC(VGA_VS),
	.oVGA_SYNC(VGA_SYNC),
	.oVGA_BLANK(VGA_BLANK),
	
	//	Control Signal
	.iCLK(VGA_CTRL_CLK),
	.iRST_N(DLY_RST)
	);
   
   // SRAM assignments
   wire [15:0] 		     ram_dq;
   
   assign ram_dq = (ram_dq_i | ram_dq_o); // combine data reg to one wire
   assign 	ram_a = {9'b000000000, addr_reg};
   assign 	ram_dq = (we) ? 16'hzzzz : data_reg;	//SRAM data reg set to tristate if being read
   assign 	ram_ub = 0;
   assign 	ram_lb = 0;
   assign 	ram_cen = 0;
   assign 	ram_oen = 0;
   assign 	ram_wen = we;	//Active Low Write Enable

   // VGA color assignments
   assign 	mVGA_R = (Rsel) ? {ram_dq[15:14],8'b0} : {ram_dq[7:6],8'b0};
   assign 	mVGA_G = (Rsel) ? {ram_dq[13:10],6'b0} : {ram_dq[5:2],6'b0};
   assign 	mVGA_B = (Rsel) ? {ram_dq[9:8],8'b0} 	: {ram_dq[1:0],8'b0};

   
    wire clk_pix;
    wire clk_16m;
    
    reg q_draw;
    wire de;

   
    wire adc_ready;
    wire [WIDTH-1:0] adc_data;
    adc adc_inst(.clk(clk_16m), .adc_clk(adc_clk), .adc_cs(adc_cs), .adc_sd(adc_sd), .data(adc_data), .ready(adc_ready), .reset(~reset));

    wire signed [WIDTH-1:0] sample_imag = 12'b0;
    wire signed [WIDTH-1:0] output_real, output_imag;
    
    // energy in the bin band
    reg [WIDTH*2+1:0] abs;

    reg [7:0] bins [BINS-1:0];
    wire [7:0] corrected_pwm_level [7:0];
    wire sync;
    reg [7:0] bin = 0;

    // update first BINS bins, syncing off the fft sync output
    localparam BIN_DIV = 7;
    always @(posedge clk_16m) begin
        if(fft_ce) begin
            abs <= (output_real * output_real) + (output_imag * output_imag);
            if(sync) begin
                bin <= 0;
            end else begin
                bin <= bin + 1;
            end
            if(bin < BINS) begin
                bins[bin] <= (abs >> BIN_DIV) < 255 ? (abs >> BIN_DIV) : 255; // scale & limit to 255
//                bins[bin] <= output_real;
            end
        end
    end

    // Dan's fft core
    wire fft_ce;
    wire [WIDTH-1:0] decimated_data;
    decimator #(.WIDTH(WIDTH)) decimator_0(.clk(clk_16m), .ce(adc_ready), .data_in(adc_data), .data_out(decimated_data), .new_sample(fft_ce));
    fftmain fft_0(.i_clk(clk_16m), .i_reset(~reset), .i_ce(fft_ce), .i_sample({decimated_data, sample_imag}), .o_result({output_real, output_imag}), .o_sync(sync));
    
    // pwm and gamma correction for each LED
    generate
        genvar i;
        for(i = 0; i < BINS; i = i + 1) begin
            bram #(.ADDR_W(PWM_WIDTH), .DATA_W(PWM_WIDTH), .FILE("gamma.hex")) gamma_LUT (.r_clk(clk_16m), .r_addr(bins[i]), .r_data(corrected_pwm_level[i]), .r_en(1'b1));
            pwm #(.WIDTH(PWM_WIDTH), .INVERT(1'b0))  pwm_inst (.clk(clk_16m), .level(corrected_pwm_level[i]), .pwm(leds[i]));
        end
    endgenerate
    
   // RAM to DDR controller ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   ram2ddrxadc r2d(
		   .clk_200MHz_i(clk_200MHz_i),  
		   .rst_i(rst_i),         
		   .device_temp_i(device_temp_i), 
     		   .ram_a(ram_a),         
		   .ram_dq_i(ram_dq_i),      
		   .ram_dq_o(ram_dq_o),      
		   .ram_cen(ram_cen),       
		   .ram_oen(ram_oen),       
		   .ram_wen(ram_wen),       
		   .ram_ub(ram_ub),        
		   .ram_lb(ram_lb),        
		   .ddr2_addr(ddr2_addr),     
		   .ddr2_ba(ddr2_ba),       
		   .ddr2_ras_n(ddr2_ras_n),    
		   .ddr2_cas_n(ddr2_cas_n),    
		   .ddr2_we_n(ddr2_we_n),     
		   .ddr2_ck_p(ddr2_ck_p),     
		   .ddr2_ck_n(ddr2_ck_n),     
		   .ddr2_cke(ddr2_cke),      
		   .ddr2_cs_n(ddr2_cs_n),     
		   .ddr2_dm(ddr2_dm),       
		   .ddr2_odt(ddr2_odt),      
		   .ddr2_dq(ddr2_dq),       
		   .ddr2_dqs_p(ddr2_dqs_p),    
		   .ddr2_dqs_n(ddr2_dqs_n)
		   );
   

   // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



   
    // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~VGA output~~~~~~~~~~~~~~~~~~~~~~~~~~
   //  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
//*** Spectrogram/Bar Graph Drawing ***//
   
   reg			v_sync_start;		//marks the first cycle of v_sync, may be removed later
   reg [9:0] 		offset;				//horizontal circular buffer offset
   reg [31:0] 		samp_count;			//counter for timing even samples
   reg [2:0] 		state;				//state variable for sample & draw states
   reg 			copy_state;			//state for copying over freq bins to SRAM
   reg			s_flag;				//flag that indicates a sample has been made - used by counter
   reg			hold;				//signal to hold output of the FFT while it's being sampled
   reg [4:0] 		freq_addr;			//address which point of the n point FFT to read
   reg [4:0] 		freq_copy;			//which frequency bin is being copied from
   reg [31:0] 		samp_time;			//let's us set how often to sample the FFT
   reg [3:0] 		num_samps;			//tracks the number of samples made
   wire [7:0] 		FFT_out;			//output from the FFT
   
   /*	Set of Frequency Bin Buffers up to 6 entries deep for smoother updating of SRAM	*/
   reg [47:0] 		freq_bin0;
   reg [47:0] 		freq_bin1;
   reg [47:0] 		freq_bin2;
   reg [47:0] 		freq_bin3;
   
   reg [47:0] 		freq_bin4;
   reg [47:0] 		freq_bin5;
   reg [47:0] 		freq_bin6;
   reg [47:0] 		freq_bin7;
   
   reg [47:0] 		freq_bin8;
   reg [47:0] 		freq_bin9;
   reg [47:0] 		freq_bin10;
   reg [47:0] 		freq_bin11;
   
   reg [47:0] 		freq_bin12;
   reg [47:0] 		freq_bin13;
   reg [47:0] 		freq_bin14;
   reg [47:0] 		freq_bin15;
   
   reg [47:0] 		freq_bin16;
   reg [47:0] 		freq_bin17;
   reg [47:0] 		freq_bin18;
   reg [47:0] 		freq_bin19;
   
   reg [47:0] 		freq_bin20;
   reg [47:0] 		freq_bin21;
   reg [47:0] 		freq_bin22;
   reg [47:0] 		freq_bin23;
   
   reg [47:0] 		freq_bin24;
   reg [47:0] 		freq_bin25;
   reg [47:0] 		freq_bin26;
   reg [47:0] 		freq_bin27;
   
   reg [47:0] 		freq_bin28;
   reg [47:0] 		freq_bin29;
   reg [47:0] 		freq_bin30;
   reg [47:0] 		freq_bin31;
   /*	End of Frequency Bins */
   
   
//reset & VGA Pixel Blat + Line Drawer State Machine
always @ (posedge VGA_CTRL_CLK)
begin
	case (SW[2:0])	//Read Desired Screen Length in Time from Switches 2:0
		0:	begin
				samp_time <= 32'd84000;		//2 Seconds on Screen
			end
		1:	begin
				samp_time <= 32'd126000;	//3 Seconds on Screen
			end
		2:	begin
				samp_time <= 32'd168000;	//4 Seconds on Screen
			end
		3:	begin
				samp_time <= 32'd210000;	//5 Seconds on Screen
			end
		4:	begin
				samp_time <= 32'd252000;	//6 Seconds on Screen
			end
		5:	begin
				samp_time <= 32'd294000;	//7 Seconds on Screen
			end
		6:	begin
				samp_time <= 32'd336000;	//8 Seconds on Screen
			end
		7:	begin
				samp_time <= 32'd378000;	//9 Seconds on Screen
			end
	endcase

	if (reset2) begin
		//blank the screen
		addr_reg <= {coord_x[9:0],coord_y[8 :1]};
		we <= 1'b0;

		data_reg <= 16'h0000;
		Rsel <= 0;
		v_sync_start <= 1;
		offset <= 10'b0;
		samp_count <= 0;
		s_flag <= 0;
		state <= 3;
		num_samps <= 0;
		copy_state <= 0;
		freq_copy <= 0;
	end else begin	
		/*** FFT Sampling Accumulator ***/
		//Has a sample just been taken?
		if (s_flag) begin
			//decrement the accumulator & clear the flag
			samp_count <= samp_count + 32'b1 - samp_time;
			s_flag <= 0;
		end else if (button) begin
			//increment the accumulator if not paused
			samp_count <= samp_count + 32'b1;
		end
		
		if ((~VGA_HS  | ~VGA_VS)& button) begin
			//At the start of a vertical sync, copy over to SRAM from the buffer
			if (~VGA_VS & v_sync_start) begin
				//if there still exist samples in the buffer to be copied
				if (num_samps > 0) begin
					//the copying state machine
					if (copy_state <= 0) begin
						we <= 1;
						addr_reg <= {(10'd20 + offset),1'b0,(5'd31 - freq_copy),2'b0};
						copy_state <= 1;
						
						//address correct frequency bin in SRAM
						case (freq_copy)
							0:	begin
									data_reg <= {8'b0,freq_bin0[7:0]};
									if (num_samps > 1) begin
										freq_bin0 <= freq_bin0 >> 8;
									end
								end
							1:	begin
									data_reg <= {8'b0,freq_bin1[7:0]};
									if (num_samps > 1) begin
										freq_bin1 <= freq_bin1 >> 8;
									end
								end
							2:	begin
									data_reg <= {8'b0,freq_bin2[7:0]};
									if (num_samps > 1) begin
										freq_bin2 <= freq_bin2 >> 8;
									end
								end
							3:	begin
									data_reg <= {8'b0,freq_bin3[7:0]};
									if (num_samps > 1) begin
										freq_bin3 <= freq_bin3 >> 8;
									end
								end
							4:	begin
									data_reg <= {8'b0,freq_bin4[7:0]};
									if (num_samps > 1) begin
										freq_bin4 <= freq_bin4 >> 8;
									end
								end
							5:	begin
									data_reg <= {8'b0,freq_bin5[7:0]};
									if (num_samps > 1) begin
										freq_bin5 <= freq_bin5 >> 8;
									end
								end
							6:	begin
									data_reg <= {8'b0,freq_bin6[7:0]};
									if (num_samps > 1) begin
										freq_bin6 <= freq_bin6 >> 8;
									end
								end
							7:	begin
									data_reg <= {8'b0,freq_bin7[7:0]};
									if (num_samps > 1) begin
										freq_bin7 <= freq_bin7 >> 8;
									end
								end
							8:	begin
									data_reg <= {8'b0,freq_bin8[7:0]};
									if (num_samps > 1) begin
										freq_bin8 <= freq_bin8 >> 8;
									end
								end
							9:	begin
									data_reg <= {8'b0,freq_bin9[7:0]};
									if (num_samps > 1) begin
										freq_bin9 <= freq_bin9 >> 8;
									end
								end
							10:	begin
									data_reg <= {8'b0,freq_bin10[7:0]};
									if (num_samps > 1) begin
										freq_bin10 <= freq_bin10 >> 8;
									end
								end
							11:	begin
									data_reg <= {8'b0,freq_bin11[7:0]};
									if (num_samps > 1) begin
										freq_bin11 <= freq_bin11 >> 8;
									end
								end
							12:	begin
									data_reg <= {8'b0,freq_bin12[7:0]};
									if (num_samps > 1) begin
										freq_bin12 <= freq_bin12 >> 8;
									end
								end
							13:	begin
									data_reg <= {8'b0,freq_bin13[7:0]};
									if (num_samps > 1) begin
										freq_bin13 <= freq_bin13 >> 8;
									end
								end
							14:	begin
									data_reg <= {8'b0,freq_bin14[7:0]};
									if (num_samps > 1) begin
										freq_bin14 <= freq_bin14 >> 8;
									end
								end
							15:	begin
									data_reg <= {8'b0,freq_bin15[7:0]};
									if (num_samps > 1) begin
										freq_bin15 <= freq_bin15 >> 8;
									end
								end
							16:	begin
									data_reg <= {8'b0,freq_bin16[7:0]};
									if (num_samps > 1) begin
										freq_bin16 <= freq_bin16 >> 8;
									end
								end
							17:	begin
									data_reg <= {8'b0,freq_bin17[7:0]};
									if (num_samps > 1) begin
										freq_bin17 <= freq_bin17 >> 8;
									end
								end
							18:	begin
									data_reg <= {8'b0,freq_bin18[7:0]};
									if (num_samps > 1) begin
										freq_bin18 <= freq_bin18 >> 8;
									end
								end
							19:	begin
									data_reg <= {8'b0,freq_bin19[7:0]};
									if (num_samps > 1) begin
										freq_bin19 <= freq_bin19 >> 8;
									end
								end
							20:	begin
									data_reg <= {8'b0,freq_bin20[7:0]};
									if (num_samps > 1) begin
										freq_bin20 <= freq_bin20 >> 8;
									end
								end
							21:	begin
									data_reg <= {8'b0,freq_bin21[7:0]};
									if (num_samps > 1) begin
										freq_bin21 <= freq_bin21 >> 8;
									end
								end
							22:	begin
									data_reg <= {8'b0,freq_bin22[7:0]};
									if (num_samps > 1) begin
										freq_bin22 <= freq_bin22 >> 8;
									end
								end
							23:	begin
									data_reg <= {8'b0,freq_bin23[7:0]};
									if (num_samps > 1) begin
										freq_bin23 <= freq_bin23 >> 8;
									end
								end
							24:	begin
									data_reg <= {8'b0,freq_bin24[7:0]};
									if (num_samps > 1) begin
										freq_bin24 <= freq_bin24 >> 8;
									end
								end
							25:	begin
									data_reg <= {8'b0,freq_bin25[7:0]};
									if (num_samps > 1) begin
										freq_bin25 <= freq_bin25 >> 8;
									end
								end
							26:	begin
									data_reg <= {8'b0,freq_bin26[7:0]};
									if (num_samps > 1) begin
										freq_bin26 <= freq_bin26 >> 8;
									end
								end
							27:	begin
									data_reg <= {8'b0,freq_bin27[7:0]};
									if (num_samps > 1) begin
										freq_bin27 <= freq_bin27 >> 8;
									end
								end
							28:	begin
									data_reg <= {8'b0,freq_bin28[7:0]};
									if (num_samps > 1) begin
										freq_bin28 <= freq_bin28 >> 8;
									end
								end
							29:	begin
									data_reg <= {8'b0,freq_bin29[7:0]};
									if (num_samps > 1) begin
										freq_bin29 <= freq_bin29 >> 8;
									end
								end
							30:	begin
									data_reg <= {8'b0,freq_bin30[7:0]};
									if (num_samps > 1) begin
										freq_bin30 <= freq_bin30 >> 8;
									end
								end
							31:	begin
									data_reg <= {8'b0,freq_bin31[7:0]};
									if (num_samps > 1) begin
										freq_bin31 <= freq_bin31 >> 8;
									end
								end
						endcase
						
					end else begin
						we <= 1'b0;
						copy_state <= 0;
						if (freq_copy == 31) begin
							num_samps <= num_samps - 1'b1;
							if (offset < 599) begin
								offset <= offset + 1'b1;
							end else begin
								offset <= 0;
							end
						end
						
						freq_copy <= freq_copy + 1'b1;
					end
							
				end else begin	//no more entries to copy
					v_sync_start <= 0;
				end
			end else begin	//the sampling state machine
				
				we <= 1;
				
				if (~VGA_HS & VGA_VS) begin	//reset v_sync_start
					v_sync_start <=1;
				end
				
				case (state)
				0: 	begin	//Should be initializing the sampling
						hold <= 1;
						freq_addr <= 0;

						// Wait for ready signal prior to switching state.
						if (ready_1)
							state <= 1;
					end
				
				1:	begin	//Cycle through till 32 freqs have been taken from the FFT
						
						case (freq_addr)	//shift in the latest sample
							0:	begin
									if (num_samps == 0) begin
										freq_bin0[7:0] <= FFT_out;
									end else begin
										freq_bin0 <= freq_bin0 | (FFT_out << {num_samps,3'b0});
									end
								end
							1:	begin
									if (num_samps == 0) begin
										freq_bin1[7:0] <= FFT_out;
									end else begin
										freq_bin1 <= freq_bin1 | (FFT_out << {num_samps,3'b0});
									end
								end
							2:	begin
									if (num_samps == 0) begin
										freq_bin2[7:0] <= FFT_out;
									end else begin
										freq_bin2 <= freq_bin2 | (FFT_out << {num_samps,3'b0});
									end
								end
							3:	begin
									if (num_samps == 0) begin
										freq_bin3[7:0] <= FFT_out;
									end else begin
										freq_bin3 <= freq_bin3 | (FFT_out << {num_samps,3'b0});
									end
								end
							4:	begin
									if (num_samps == 0) begin
										freq_bin4[7:0] <= FFT_out;
									end else begin
										freq_bin4 <= freq_bin4 | (FFT_out << {num_samps,3'b0});
									end
								end
							5:	begin
									if (num_samps == 0) begin
										freq_bin5[7:0] <= FFT_out;
									end else begin
										freq_bin5 <= freq_bin5 | (FFT_out << {num_samps,3'b0});
									end
								end
							6:	begin
									if (num_samps == 0) begin
										freq_bin6[7:0] <= FFT_out;
									end else begin
										freq_bin6 <= freq_bin6 | (FFT_out << {num_samps,3'b0});
									end
								end
							7:	begin
									if (num_samps == 0) begin
										freq_bin7[7:0] <= FFT_out;
									end else begin
										freq_bin7 <= freq_bin7 | (FFT_out << {num_samps,3'b0});
									end
								end
							8:	begin
									if (num_samps == 0) begin
										freq_bin8[7:0] <= FFT_out;
									end else begin
										freq_bin8 <= freq_bin8 | (FFT_out << {num_samps,3'b0});
									end
								end
							9:	begin
									if (num_samps == 0) begin
										freq_bin9[7:0] <= FFT_out;
									end else begin
										freq_bin9 <= freq_bin9 | (FFT_out << {num_samps,3'b0});
									end
								end
							10:	begin
									if (num_samps == 0) begin
										freq_bin10[7:0] <= FFT_out;
									end else begin
										freq_bin10 <= freq_bin10 | (FFT_out << {num_samps,3'b0});
									end
								end
							11:	begin
									if (num_samps == 0) begin
										freq_bin11[7:0] <= FFT_out;
									end else begin
										freq_bin11 <= freq_bin11 | (FFT_out << {num_samps,3'b0});
									end
								end
							12:	begin
									if (num_samps == 0) begin
										freq_bin12[7:0] <= FFT_out;
									end else begin
										freq_bin12 <= freq_bin12 | (FFT_out << {num_samps,3'b0});
									end
								end
							13:	begin
									if (num_samps == 0) begin
										freq_bin13[7:0] <= FFT_out;
									end else begin
										freq_bin13 <= freq_bin13 | (FFT_out << {num_samps,3'b0});
									end
								end
							14:	begin
									if (num_samps == 0) begin
										freq_bin14[7:0] <= FFT_out;
									end else begin
										freq_bin14 <= freq_bin14 | (FFT_out << {num_samps,3'b0});
									end
								end
							15:	begin
									if (num_samps == 0) begin
										freq_bin15[7:0] <= FFT_out;
									end else begin
										freq_bin15 <= freq_bin15 | (FFT_out << {num_samps,3'b0});
									end
								end
							16:	begin
									if (num_samps == 0) begin
										freq_bin16[7:0] <= FFT_out;
									end else begin
										freq_bin16 <= freq_bin16 | (FFT_out << {num_samps,3'b0});
									end
								end
							17:	begin
									if (num_samps == 0) begin
										freq_bin17[7:0] <= FFT_out;
									end else begin
										freq_bin17 <= freq_bin17 | (FFT_out << {num_samps,3'b0});
									end
								end
							18:	begin
									if (num_samps == 0) begin
										freq_bin18[7:0] <= FFT_out;
									end else begin
										freq_bin18 <= freq_bin18 | (FFT_out << {num_samps,3'b0});
									end
								end
							19:	begin
									if (num_samps == 0) begin
										freq_bin19[7:0] <= FFT_out;
									end else begin
										freq_bin19 <= freq_bin19 | (FFT_out << {num_samps,3'b0});
									end
								end
							20:	begin
									if (num_samps == 0) begin
										freq_bin20[7:0] <= FFT_out;
									end else begin
										freq_bin20 <= freq_bin20 | (FFT_out << {num_samps,3'b0});
									end
								end
							21:	begin
									if (num_samps == 0) begin
										freq_bin21[7:0] <= FFT_out;
									end else begin
										freq_bin21 <= freq_bin21 | (FFT_out << {num_samps,3'b0});
									end
								end
							22:	begin
									if (num_samps == 0) begin
										freq_bin22[7:0] <= FFT_out;
									end else begin
										freq_bin22 <= freq_bin22 | (FFT_out << {num_samps,3'b0});
									end
								end
							23:	begin
									if (num_samps == 0) begin
										freq_bin23[7:0] <= FFT_out;
									end else begin
										freq_bin23 <= freq_bin23 | (FFT_out << {num_samps,3'b0});
									end
								end
							24:	begin
									if (num_samps == 0) begin
										freq_bin24[7:0] <= FFT_out;
									end else begin
										freq_bin24 <= freq_bin24 | (FFT_out << {num_samps,3'b0});
									end
								end
							25:	begin
									if (num_samps == 0) begin
										freq_bin25[7:0] <= FFT_out;
									end else begin
										freq_bin25 <= freq_bin25 | (FFT_out << {num_samps,3'b0});
									end
								end
							26:	begin
									if (num_samps == 0) begin
										freq_bin26[7:0] <= FFT_out;
									end else begin
										freq_bin26 <= freq_bin26 | (FFT_out << {num_samps,3'b0});
									end
								end
							27:	begin
									if (num_samps == 0) begin
										freq_bin27[7:0] <= FFT_out;
									end else begin
										freq_bin27 <= freq_bin27 | (FFT_out << {num_samps,3'b0});
									end
								end
							28:	begin
									if (num_samps == 0) begin
										freq_bin28[7:0] <= FFT_out;
									end else begin
										freq_bin28 <= freq_bin28 | (FFT_out << {num_samps,3'b0});
									end
								end
							29:	begin
									if (num_samps == 0) begin
										freq_bin29[7:0] <= FFT_out;
									end else begin
										freq_bin29 <= freq_bin29 | (FFT_out << {num_samps,3'b0});
									end
								end
							30:	begin
									if (num_samps == 0) begin
										freq_bin30[7:0] <= FFT_out;
									end else begin
										freq_bin30 <= freq_bin30 | (FFT_out << {num_samps,3'b0});
									end
								end
							31:	begin
									if (num_samps == 0) begin
										freq_bin31[7:0] <= FFT_out;
									end else begin
										freq_bin31 <= freq_bin31 | (FFT_out << {num_samps,3'b0});
									end
								end
						endcase
						
						if (freq_addr == 31) begin	//if last sample has been copied ...
							hold <= 0;
							state <= 3;
							num_samps <= num_samps + 1'b1;						
						end else begin
							//update freq_addr & go to address
							freq_addr <= freq_addr + 1'b1;
							state <= 2;
						end
					end
				
				2:	begin			
						//time to set up next read
						state <= 1;
					end
				
				3:	begin	//Should wait for time to take a new sample
						if (samp_count >= samp_time) begin
							state <= 0;
							s_flag <= 1;
						end
					end 
					
				endcase
			end																															
		end else begin
				/*** VGA READING SRAM ***/
				//If VGA is in the bar graph part of the screen
				if ((coord_x > 63)&(coord_x < 576)&(coord_y > 292)&(coord_y < 419)) begin
					//x address is part of Nth bar (0-31)
					//is coord_y above bar magnitude? address normally
					//else, address spectogram[offset - 1] - the most recent SRAM entry
					case ((coord_x - 64)>>4)
						0:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin0[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd124};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd124};
									    Rsel <= 0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						1:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin1[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd120};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd120};
									    Rsel <= 0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						2:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin2[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd116};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd116};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						3:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin3[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd112};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd224};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						4:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin4[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd108};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd216};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						5:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin5[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd104};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd208};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						6:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin6[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd100};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd200};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						7:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin7[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd96};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd192};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						8:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin8[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd92};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd184};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						9:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin9[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd88};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd176};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						10:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin10[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd84};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd168};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						11:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin11[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd80};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd160};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						12:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin12[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd76};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd152};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						13:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin13[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd72};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd144};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						14:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin14[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd68};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd136};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						15:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin15[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd64};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd128};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						16:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin16[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd60};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd120};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						17:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin17[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd56};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd112};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						18:	begin
								if (coord_y > (9'd419 - {2'b0,freq_bin18[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd52};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd104};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						19:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin19[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd48};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd96};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						20:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin20[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd44};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd88};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						21:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin21[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd40};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd80};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						22:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin22[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd36};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd72};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						23:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin23[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd32};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd64};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						24:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin24[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd28};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd56};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						25:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin25[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd24};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd48};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						26:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin26[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd20};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd40};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						27:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin27[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd16};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd32};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						28:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin28[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd12};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd24};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						29:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin29[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd8};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd16};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						30:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin30[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd4};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd8};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
						31:	begin
								if (coord_y >= (9'd419 - {2'b0,freq_bin31[7:1]})) begin
									if (offset > 0)begin
										addr_reg <= {(10'd19+offset),8'd0};
										Rsel <= 0;
									end else begin
										addr_reg <= {10'd619,8'd0};
									    Rsel <=0;
									end
								end else begin
									addr_reg <= {coord_x[9:0],coord_y[8:1]};
									Rsel <= coord_y[0];	
								end
							end
				default:	begin
								addr_reg <= {coord_x[9:0],coord_y[8:1]};
								Rsel <= coord_y[0];
							end
					endcase
				end else if	((coord_x < 20)|(coord_x > 619)|(coord_y > 255)) begin	//SRAM not in spectro or bars
					addr_reg <= {coord_x[9:0],coord_y[8:1]};
					Rsel <= coord_y[0];
				end else if ((coord_x + offset) < 620)begin	//SRAM in spectro - address using offset
					addr_reg <= {(coord_x[9:0]+offset),coord_y[8:3],2'b0};
					Rsel <= 0;
				end else begin //SRAM in spectro - wrap around using offset
					addr_reg <= {(coord_x[9:0]-(10'd600 - offset)),coord_y[8:3],2'b0};
					Rsel <=0;
				end

				we <= 1'b1;
		end
	end
end

   // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   
   // VGA synchronization with FFT
   reg ready_1, ready_0;
   
   always @ (posedge VGA_CTRL_CLK)
     begin
	ready_0 <= sync;
	ready_1 <= ready_0;
     end
   
   
endmodule
