
module sec_counter (
    input wire clk_1Hz,
    input wire rst,
    output reg [5:0] sec,
    output reg tick
);
    always @(posedge clk_1Hz or posedge rst) begin
        if (rst) begin
            sec <= 0;
            tick <= 0;
        end else begin
            if (sec == 59) begin
                sec <= 0;
                tick <= 1;
            end else begin
                sec <= sec + 1;
                tick <= 0;
            end
        end
    end
endmodule
