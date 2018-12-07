`timescale 1ns / 1ps
module bcdto7seg(
    input [3:0]x,
    input [7:0] sel,
    output [7:0] an,
    output reg [6:0] seg
    );
    assign an = sel;
    always@(*)
    begin
        case (x)
            0 : seg <= 7'b1000000; 
            1 : seg <= 7'b1111001;
            2 : seg <= 7'b0100100;
            3 : seg <= 7'b0110000;
            4 : seg <= 7'b0011001;
            5 : seg <= 7'b0010010;
            6 : seg <= 7'b0000010;
            7 : seg<= 7'b1111000;
            8 : seg <= 7'b0000000;
            9 : seg <= 7'b0010000;
            default : seg <= 7'b0000000;
        endcase
    end
endmodule
