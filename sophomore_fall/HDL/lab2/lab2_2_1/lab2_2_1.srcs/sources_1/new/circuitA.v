`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/26 16:17:52
// Design Name: 
// Module Name: circuitA
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


module circuitA(
    input [2:0]v,
    output [2:0]temp
    );
    assign temp[2] = v[2]&v[1]&~v[0]+v[2]&v[1]&v[0];
    assign temp[1] = v[2]&~v[1];
    assign temp[0] = v[1]&v[0]+v[2]&~v[1]&v[0];
endmodule
