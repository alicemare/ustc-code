`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/26 16:03:08
// Design Name: 
// Module Name: comp4bit
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


module comp4bit(
        a,
        b,
        z

    );
    input [3:0] a;
    input [3:0] b;
    output z;
    assign z = (a>b)?1'b1:1'b0; 
endmodule
