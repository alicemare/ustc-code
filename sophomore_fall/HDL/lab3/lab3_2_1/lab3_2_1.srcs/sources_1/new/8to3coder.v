`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/26 20:38:15
// Design Name: 
// Module Name: 8to3coder
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


module eight2thre_enecoder(
    input [7:0]v,
    input en_in_n,
    output reg [2:0]y,
    output reg en_out,
    output reg gs
    );
    
    always @ (en_in_n,v)
    begin
        if(en_in_n == 1) begin
            y=3'b111;
            gs = 1;
            en_out = 1;
            end
    
    else
        begin
            gs = 0;
            en_out = 1;
            case (v)
                8'b0xxxxxxx: y = 3'd0;
                8'b10xxxxxx: y = 3'd1;
                8'b110xxxxx: y = 3'd2;
                8'b1110xxxx: y = 3'd3;
                8'b11110xxx: y = 3'd4;
                8'b111110xx: y = 3'd5;
                8'b1111110x: y = 3'd6;
                8'b11111110: y = 3'd7;
            default: begin
                y=3'd0;
                gs=0;
                en_out=1;
                end      
        endcase
    end
    end
            
        
    
    
    
    
    
    
    
    
    

endmodule