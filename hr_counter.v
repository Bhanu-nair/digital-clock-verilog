
module hr_counter (
    input wire clk_1Hz,
    input wire rst,
    input wire enable,
    output reg [4:0] hr
);
    always @(posedge clk_1Hz or posedge rst) begin
        if (rst) begin
            hr <= 0;
        end else if (enable) begin
            if (hr == 23)
                hr <= 0;
            else
                hr <= hr + 1;
        end
    end
endmodule
