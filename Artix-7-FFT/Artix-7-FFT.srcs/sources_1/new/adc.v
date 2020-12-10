`default_nettype none
module adc (
	    input wire 	      clk,
	    input wire 	      reset,
	    output wire       adc_clk,
	    output wire       adc_cs,
	    output reg 	      ready,
	    input wire 	      adc_sd,
	    output reg [11:0] data
	    );
   
   initial begin
      ready = 0;
      data = 0;
   end
   
   assign adc_clk = clk;
   assign adc_cs = (cnt == 0 && reset == 0) ? 1 : 0; 
   
   reg [11:0] serial_data = 0;
   reg [3:0]  cnt = 0;
   
   always @(posedge clk) begin
      
      if(reset) begin
         serial_data <= 12'b0;
         cnt <= 0;
         data <= 12'b0;
         ready <= 0;
      end else begin
	 
         cnt<=cnt+1;
	 
         if(cnt > 3 && cnt <= 15)
           serial_data <= { serial_data[10:0], adc_sd };
         if(cnt == 3)
           serial_data <= 0;
         if(cnt == 0) begin
            data <= serial_data;
            ready <= 1;
         end
	 
         // ready signal only high for one clock
         if(cnt == 1) 
           ready <= 0;
      end
   end
   
   
endmodule
