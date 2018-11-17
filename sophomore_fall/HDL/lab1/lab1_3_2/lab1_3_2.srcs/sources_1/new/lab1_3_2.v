`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/12 21:05:51
// Design Name: 
// Module Name: lab1_3_2
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


module lab1_3_2(x,y,s,m);
    output [1:0] m;
    input [1:0] x,y;
    input s;
    reg [1:0] m;
    
    always @(x or y or s)
     if (s == 1'b0)
        m = x;
     else
        m = y;
endmodule