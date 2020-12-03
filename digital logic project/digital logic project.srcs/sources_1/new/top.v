`timescale 1ns / 1ps

module top(
	   output [11:0] LED_out,
	   input [11:0]  digital_signal_in
	   );

   assign LED_out = digital_signal_in;
   
endmodule
