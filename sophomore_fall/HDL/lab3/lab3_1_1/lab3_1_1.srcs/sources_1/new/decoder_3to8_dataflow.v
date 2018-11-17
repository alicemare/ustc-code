`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/20 08:59:58
// Design Name: 
// Module Name: decoder_3to8_dataflow
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


module decoder_3to8_dataflow(
    input [2:0] x,
    output [7:0] y
    );
    reg [7:0] y;
    always @(x)
    begin
     case(x)
        0:y=8'b00000001;
        1:y=8'b00000010;
        2:y=8'b00000100;
        3:y=8'b00001000;
        4:y=8'b00010000;
        5:y=8'b00100000;
        6:y=8'b01000000;
        7:y=8'b10000000;
        //8:y=8'b00000100;
      endcase 
    end
                                
endmodule
