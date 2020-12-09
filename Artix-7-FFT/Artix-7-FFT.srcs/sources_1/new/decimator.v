`default_nettype none
module decimator (
    input wire clk,
    input wire ce,
    input wire [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] data_out,
    output wire new_sample
    );

   localparam WIDTH = 12;
   localparam TIMES = 32;
   
    localparam COUNT_WIDTH = $clog2(TIMES);
//    localparam COUNT_WIDTH = 4;
    reg [COUNT_WIDTH:0] count = 0;

    assign new_sample = (ce && (count == (TIMES - 1)));

    always @(posedge clk)
        if(ce) begin
            count <= count + 1;
            if(count == TIMES-1) begin
                count <= 0;
                data_out <= data_in;
            end
        end
    
endmodule
