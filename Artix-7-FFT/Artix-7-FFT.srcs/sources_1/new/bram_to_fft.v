`default_nettype none


module bram_to_fft(
		   input wire 	     clk,
		   input wire [11:0] head,
		   output reg [11:0] addr,
		   input wire [15:0] data,
		   input wire 	     start,
		   input wire 	     last_missing,
		   output reg [31:0] frame_tdata,
		   output reg 	     frame_tlast,
		   input wire 	     frame_tready,
		   output reg 	     frame_tvalid
		   );
   
   wire signed [15:0] 		     data_signed = {1'b0, data} - (1 << 15);
   
   reg 				     sending = 0;
   reg [11:0] 			     send_count = 0;
   
   always @(posedge clk) begin
      frame_tvalid <= 0;
      frame_tlast <= 0;
      if (!sending) begin
         if (start) begin
            addr <= head;
            send_count <= 0;
            sending <= 1;
         end
      end
      else begin
         if (last_missing) begin
            sending <= 0;
         end
         else begin
            frame_tdata <= {16'b0, data_signed};
            frame_tvalid <= 1;
            if (frame_tready) begin
               addr <= addr + 1;
               send_count <= send_count + 1;
            end
            if (&send_count) begin
               frame_tlast <= 1;
               if (frame_tready) sending <= 0;
            end
         end
      end
   end
   
endmodule
