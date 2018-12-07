`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/28 16:18:06
// Design Name: 
// Module Name: mod3tb
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


module mod3tb(

    );
    reg clk,reset;
    reg ain;
    wire [3:0] count;
    wire yout;
    wire [1:0]stu;
    //cao,这里yout第一次用reg不行 sim说eleborate step failed with error
 mod3check tb(clk,reset,ain,count,yout);
 initial begin
    clk = 0;
    reset = 1;
    ain = 0;
 end
 
 always @(*) begin
 #5 clk <= ~clk;
 end
 initial begin
 #20 reset = 0;
 #20 ain =1;
 #20 ain=0;
 #60 ain=1;
 #40 ain = 0;
 #20 ain =1;
 #10 reset =1;
 end    
endmodule
