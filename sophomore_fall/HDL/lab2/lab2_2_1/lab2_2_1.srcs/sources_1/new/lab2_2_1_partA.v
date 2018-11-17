`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/26 15:47:50
// Design Name: 
// Module Name: lab2_2_1_partA
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


module lab2_2_1_partA(
     v,
     z,
     m
    );
    input [3:0] v;
    output z;
    output [3:0] m;
    comp4bit compare_ten (v,9,z);
    wire [2:0]temp;
    circuitA trans (v[2:0],temp[2:0]);
    mux2to1 mux0 (v[3],0,z,m[3]);
    mux2to1 mux1 (v[2],temp[2],z,m[2]);
    mux2to1 mux2 (v[1],temp[1],z,m[1]);
    mux2to1 mux3 (v[0],temp[0],z,m[0]);
       
endmodule
