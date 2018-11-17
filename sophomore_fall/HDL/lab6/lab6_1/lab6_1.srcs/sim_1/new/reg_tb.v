`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/08 20:32:30
// Design Name: 
// Module Name: reg_tb
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


module reg_tb(

    );
    reg [3:0] i;
    wire [3:0]q;
    reg clk,load, reset;
    initial begin
    clk=0;
    load=0;
    reset=0;
    i=0;
    end 
    always begin  
    #10 clk=~clk; 
    end
    Register_with_synch_reset_load_behavior DUT (i,clk,reset,load,q);
    initial begin 
     #20 i=3;
     #40 load = 1;
     #20 load = 0;
     i=9;
     #40 load = 1;
     #20 load = 0;
     #15 reset = 1;
     #40 load = 1;
     #20 load = 0;
     #15 reset = 0;
    end
    
endmodule
