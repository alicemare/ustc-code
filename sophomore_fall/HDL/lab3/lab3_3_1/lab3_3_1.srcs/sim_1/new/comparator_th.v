`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/02 17:08:53
// Design Name: 
// Module Name: comparator_th
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


module comparator_th(

    );
    reg [1:0] a,b;
    wire lt,gt,eq;
    rom_comparator DUT (.a(a), .b(b),.lt(lt),.gt(gt),.eq(eq));
    
    integer i,j;
    initial begin
        for(i=0;i<4;i=i+1)  begin
            for (j=0;j<4;j=j+1) begin
                #5;
                a=i;
                b=j;
            end
            
        end
    end    
    
endmodule
