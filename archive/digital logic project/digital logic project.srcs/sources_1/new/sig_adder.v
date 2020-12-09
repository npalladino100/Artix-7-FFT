`timescale 1ns / 1ps

// Module which accumulates the waveforms chosen by the nexys switches
// into the total output signal
module sig_adder(clk, sw, sig1, sig2, sig3, sig4, sig);
    input clk;                  // 1MHz clock
    input [3:0] sw;             // Switches on FPGA
    input [15:0] sig1;
    input [15:0] sig2;
    input [15:0] sig3;
    input [15:0] sig4;
    output reg [15:0] sig;      // Total output signal
    
    reg [15:0] sig_temp;

    initial begin
        sig <= 0;
        sig_temp <= 0;
    end
    
    // Accumulate chosen waveforms
    always @(posedge clk)
    begin
        sig_temp = 0;
        if (sw[0] == 1) begin
            sig_temp = sig_temp + sig1;
        end
        if (sw[1] == 1) begin
            sig_temp = sig_temp + sig2;
        end
        if (sw[2] == 1) begin
            sig_temp = sig_temp + sig3;
        end
        if (sw[3] == 1) begin
            sig_temp = sig_temp + sig4;
        end
        
        sig = sig_temp;
    end

endmodule
