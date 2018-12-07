`timescale 1ns / 1ps
module twobitcounter(
    output scl,
    output clk,
    output Q2,Q2
    );
    reg scl;
    reg clk;//时钟
    reg [3:0] Q1,Q2;//个位十位
    wire out1,out2;
    c_counter_binary_0 units(
    .CLK            (clk), 
    .CE             (1), 
    .SCLR           (scl),
    .THRESH0        (out1), 
    .Q              (Q1)
    );    //units
    c_counter_binary_0 tens(
    .CLK            (clk),
    .CE             (out1&1), 
    .SCLR           (scl),
    .THRESH0        (), 
    .Q              (Q2)
    );    //units
    initial begin 
        clk = 0;
    end
    always begin
        #1 clk =~clk;
    end

endmodule
