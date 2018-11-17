`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/02 19:47:11
// Design Name: 
// Module Name: show
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


module show(

    );
    reg a,g1,g2;
    initial begin
    a=0; g1=0; g2=1;
    #40 a=1;
    #20 g1=1;
    #20 g2=0; 
    #20 a=0;
    #20 g1=0;
    #20 g2=1;
    end
endmodule
