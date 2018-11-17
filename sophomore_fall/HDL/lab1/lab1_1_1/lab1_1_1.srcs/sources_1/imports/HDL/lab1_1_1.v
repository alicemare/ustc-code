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


module lab1_1_1(x,y,s,m);
    output  m;
    input  x,y;
    input s;
    reg  m;
    
    always @(x or y or s)
     if (s == 1'b0)
        m = x;
     else
        m = y;
endmodule
