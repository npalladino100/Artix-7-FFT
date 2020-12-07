`timescale 1ns / 1ps

module ps2_kypd_input(
		      output reg [15:0] freq1,
		      output reg [15:0] freq2,
		      output reg [15:0] freq3,
		      output reg [15:0] freq4,
		      input [3:0] 	sig_sel,
		      input [31:0] 	key,
		      input 		clk		  
		      );

   reg [11:0] 			    digi_reg;   

   always @(negedge clk) begin
      case (key[7:0])
	8'd22 : digi_reg <= 16'd1000; // 1000 = 1KHz
	8'd30 : digi_reg <= 16'd2000;
	8'd38 : digi_reg <= 16'd3000;
	8'd37 : digi_reg <= 16'd4000;
	8'd46 : digi_reg <= 16'd5000;
	8'd54 : digi_reg <= 16'd6000;
	8'd61 : digi_reg <= 16'd7000;
	8'd62 : digi_reg <= 16'd8000;
	8'd70 : digi_reg <= 16'd9000;
	8'd69 : digi_reg <= 16'd0000;
      endcase // case (key)
   end // always @ (key)

   
   always @(*) begin
      case (sig_sel)
	4'b1000 : freq1 = digi_reg;
	4'b0100 : freq2 = digi_reg;
	4'b0010 : freq3 = digi_reg;
	4'b0001 : freq4 = digi_reg;
	default : begin             // Default 1KHz
	   freq1 = 16'd1000;
	   freq2 = 16'd1000;
	   freq3 = 16'd1000;
	   freq4 = 16'd1000;
	end
      endcase // case (sig_sel)
   end // always @ (*)
   
endmodule
