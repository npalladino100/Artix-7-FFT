module debouncer #(parameter DELAY=1000000, parameter COUNT=1) (
    input wire clk,
    input wire reset,
    input wire [COUNT-1:0] noisy,
    output reg [COUNT-1:0] clean);

    genvar i;
    generate
        for (i = 0; i < COUNT; i = i + 1) begin
            reg [19:0] count;
            reg new;

            always @(posedge clk) begin
                if (reset) begin
                    count <= 0;
                    new <= noisy[i];
                    clean[i] <= noisy[i];
                end
                else if (noisy[i] != new) begin
                    new <= noisy[i];
                    count <= 0;
                end
                else if (count == DELAY)
                    clean[i] <= new;
                else
                    count <= count+1;
            end
        end
    endgenerate
      
endmodule
