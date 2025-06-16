
module min_counter (
    input wire clk_1Hz,
    input wire rst,
    input wire enable,
    output reg [5:0] min,
    output reg tick
);
    always @(posedge clk_1Hz or posedge rst) begin
        if (rst) begin
            min <= 0;
            tick <= 0;
        end else if (enable) begin
            if (min == 59) begin
                min <= 0;
                tick <= 1;
            end else begin
                min <= min + 1;
                tick <= 0;
            end
        end
    end
endmodule
