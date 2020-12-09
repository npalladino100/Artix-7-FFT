`timescale 1ns / 1ps

module synthesizer(
   output reg [11:0] sig_out, // Signal output
   output 	     clk_out, // Clock output for data synchronization
   input 	     clk_100MHz, // 100MHz built-in clock
   input [3:0] 	     sw, // Switches for choosing which types of waveforms
                                // to include in the output signal
   input [3:0] 	     sig_sel, // Switches to select waveform to change frequency
   input 	     PS2_CLK,
   input 	     PS2_DATA,
   input 	     enable       // Enable signal output
		   );
   
   wire [15:0] 	 sig_sine1;   // Sine wave 1
   wire [15:0] 	 sig_sine2;   // Sine wave 2
   wire [15:0] 	 sig_sine3;   // Sine wave 3
   wire [15:0] 	 sig_sine4;   // Sine wave 4
   wire [15:0] 	 sig;         // Total output signal
   wire [15:0] 	 freq1; 
   wire [15:0] 	 freq2; 
   wire [15:0] 	 freq3; 
   wire [15:0] 	 freq4;
   wire 	 clk_1MHz;


   clk_divider cd(clk_100MHz, clk_1MHz);
   
    // Generates first sine wave
    osc_sine sinesc_1 (
        // Inputs
        .freq   (freq1),
        .clk    (clk_1MHz),
        // Outputs
        .sin    (sig_sine1)
    );

   // Generates second sine wave
    osc_sine sinesc_2 (
        // Inputs
        .freq   (freq2),
        .clk    (clk_1MHz),
        // Outputs
        .sin    (sig_sine2)
    );

   // Generates third sine wave
    osc_sine sinesc_3 (
        // Inputs
        .freq   (freq3),
        .clk    (clk_1MHz),
        // Outputs
        .sin    (sig_sine3)
    );

   // Generates fourth sine wave
    osc_sine sinesc_4 (
        // Inputs
        .freq   (freq4),
        .clk    (clk_1MHz),
        // Outputs
        .sin    (sig_sine4)
    );
    
    // Accumulates the waveforms chosen by the nexys switches into the
    // total output signal
    sig_adder sigadd(clk_1MHz, sw, sig_sine1, sig_sine2, sig_sine3, sig_sine4, sig);

   // Sets frequency of each sine wave from ps2 keyboard input
   reg 		clk_50MHz=0;
   wire [31:0] 	keycode;
   always @(posedge(clk_100MHz)) clk_50MHz<=~clk_50MHz;
   PS2_Receiver PS2(keycode, clk_50MHz, PS2_CLK, PS2_DATA);
   ps2_kypd_input pskin1(freq1, freq2, freq3, freq4, sig_sel, keycode, clk);

   always @(*) if (enable) sig_out = sig[15:4];

   assign clk_out = clk_1MHz;
   
endmodule
