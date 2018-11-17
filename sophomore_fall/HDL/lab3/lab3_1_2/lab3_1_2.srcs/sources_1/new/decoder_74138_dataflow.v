`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/20 09:30:21
// Design Name: 
// Module Name: decoder_74138_dataflow
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder_74138_dataflow(
    input [2:0]x,
    input  g1,
    input  g2a_n,
    input  g2b_n,
    output wire[7:0]y
    );
//    if (g1&(~g2a_n)&(~g2b_n)==1) begin//若使能输入
//        decoder_3to8_dataflow decode (x,~y);
//    end
//    else begin
//    
//    end
    //写向量从高位开始写防止写反！！！！
    assign y[0] = ((g1&~g2a_n&~g2b_n)==1'b1)?~(~x[2]&~x[1]&~x[0]):1'bz;
    assign y[1] = ((g1&~g2a_n&~g2b_n)==1'b1)?~(~x[2]&~x[1]&x[0]):1'bz;
    assign y[2] = ((g1&~g2a_n&~g2b_n)==1'b1)?~(~x[2]&x[1]&~x[0]):1'bz;
    assign y[3] = ((g1&~g2a_n&~g2b_n)==1'b1)?~(~x[2]&x[1]&x[0]):1'bz;
    assign y[4] = ((g1&~g2a_n&~g2b_n)==1'b1)?~(x[2]&~x[1]&~x[0]):1'bz;
    assign y[5] = ((g1&~g2a_n&~g2b_n)==1'b1)?~(x[2]&~x[1]&x[0]):1'bz;
    assign y[6] = ((g1&~g2a_n&~g2b_n)==1'b1)?~(x[2]&x[1]&~x[0]):1'bz;
    assign y[7] = ((g1&~g2a_n&~g2b_n)==1'b1)?~(x[2]&x[1]&x[0]):1'bz;

endmodule
