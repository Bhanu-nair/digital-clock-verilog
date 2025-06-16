
module clk_divider(
    input wire clk,
    input wire rst,
    output reg clk_1Hz
);
    parameter DIVISOR = 50000000;
    reg [25:0] counter = 0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            clk_1Hz <= 0;
        end else begin
            if (counter == DIVISOR/2 - 1) begin
                clk_1Hz <= ~clk_1Hz;
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
        end
    end
endmodule
