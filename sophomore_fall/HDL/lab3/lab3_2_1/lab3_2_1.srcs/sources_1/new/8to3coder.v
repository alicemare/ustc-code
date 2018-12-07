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
            if(v[7]==0)
            y=3'b000;
            else if(v[6]==0)
            y=3'b001;
            else if(v[5]==0)
            y=3'b010;
            else if(v[4]==0)
            y=3'b011;
            else if(v[3]==0)
            y=3'b100;
            else if(v[2]==0)
            y=3'b101;
            else if(v[1]==0)
            y=3'b110;
            else if(v[0]==0)
            y=3'b111;
            else y=3'b000;
    end
    end
            
        
    
    
    
    
    
    
    
    
    

endmodule