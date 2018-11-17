`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/20 10:44:43
// Design Name: 
// Module Name: rom_comparator
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


module rom_comparator(
    input [1:0]a,
    input [1:0]b,
    output wire eq,
    output wire gt,
    output wire lt
    );
    
    reg [2:0] ROM [15:0];
    assign {lt,gt,eq}=ROM[{b,a}];
    initial $readmemb("memo.mem",ROM,0,15);
    
    
    
endmodule
