
module top_clock (
    input wire clk,
    input wire rst,
    output wire [5:0] sec,
    output wire [5:0] min,
    output wire [4:0] hr
);
    wire clk_1Hz;
    wire sec_tick, min_tick;

    clk_divider u_clkdiv (
        .clk(clk),
        .rst(rst),
        .clk_1Hz(clk_1Hz)
    );

    sec_counter u_sec (
        .clk_1Hz(clk_1Hz),
        .rst(rst),
        .sec(sec),
        .tick(sec_tick)
    );

    min_counter u_min (
        .clk_1Hz(clk_1Hz),
        .rst(rst),
        .enable(sec_tick),
        .min(min),
        .tick(min_tick)
    );

    hr_counter u_hr (
        .clk_1Hz(clk_1Hz),
        .rst(rst),
        .enable(min_tick),
        .hr(hr)
    );
endmodule
