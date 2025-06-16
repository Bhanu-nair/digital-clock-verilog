
`timescale 1ns / 1ps
module tb_top_clock;
    reg clk;
    reg rst;

    wire [5:0] sec;
    wire [5:0] min;
    wire [4:0] hr;

    top_clock uut (
        .clk(clk),
        .rst(rst),
        .sec(sec),
        .min(min),
        .hr(hr)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        rst = 1;
        #100;
        rst = 0;
        #1_000_000_000;
        $finish;
    end

    initial begin
        $dumpfile("clock.vcd");
        $dumpvars(0, tb_top_clock);
    end
endmodule
