`timescale 1ns / 1ps
module tb(

    );
    reg clk,reset;
    reg [1:0] x;
    wire yout;
    //cao,这里yout第一次用reg不行 sim说eleborate step failed with error
    //wire [2:0]state,nstate;
 //debug 用，方便看state nextstatemoore testb(clk,reset,state,nstate,x,yout);
    moore test(reset,clk,x,yout);
 initial begin
    x=2'b00;
    clk = 0;
    reset = 1;
    
 end
 
 always @(*) begin
 #5 clk <= ~clk;
 end
 initial begin
 #20 reset = 0;
 #20 x[1:0] = 11;
 #10 x[1:0] = 10;
 #10 x[1:0] = 00;
 #20 x[1:0] = 10;
 #10 x[1:0] = 00;
 #10 x[1:0] = 10;
 #10 x[1:0] = 00;
 #10 x[1:0] = 01;
 #10 x[1:0] = 00;
 #10 x[1:0] = 10;
 #10 x[1:0] = 11;
 #10 x[1:0] = 00;
 #10 reset = 1;
 #10 reset = 0;
 #10 x[1:0] = 10;
 #20 x[1:0] = 00;
 end    
endmodule