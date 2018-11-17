`timescale 1ns / 1ps

module lab2_2_1(
    input [3:0] v,
    output [6:0] seg,
    output z
    );
    wire [7:0]an;
    wire [3:0]m;
    //wire [7:0]an;
    lab2_2_1_partA(v,z,m);
    assign an[7:0]=~8'b00000001;
    bcdto7segment_dataflow light(m,an,seg);
    
endmodule
