// pulse synchronizer
module synchronizer #(parameter NSYNC = 2) ( // number of sync flops.  must be >= 2
    input wire clk,in,
    output reg out);

  reg [NSYNC-2:0] sync;

  always @ (posedge clk)
  begin
    {out,sync} <= {sync[NSYNC-2:0],in};
  end
endmodule
