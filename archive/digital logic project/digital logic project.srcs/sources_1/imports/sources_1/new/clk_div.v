`timescale 1ns / 1ps
// Clock divider circuit
// From 100 MHz to 1 MHz/200 Hz with %50 duty cycle

module clkdiv(Clk_in, Clk_out);

// input ports
input wire Clk_in;

// output ports
output reg Clk_out = 1'b0;

// counter size calculation according to input and output frequencies
parameter sys_clk = 100000000;	// 50 MHz system clock
parameter clk_out = 1000000;	// 1 MHz clock output
parameter max = sys_clk / (2*clk_out); // max-counter size

reg [5:0]counter = 0; // 6-bit counter size

always@(posedge Clk_in) begin
	if (counter == max-1)
		begin
		counter <= 0;
		Clk_out <= ~Clk_out;
		end
	else
		begin
		counter <= counter + 1'd1;
		end
	Clk_out <= (counter == 6'd0);
	end
endmodule