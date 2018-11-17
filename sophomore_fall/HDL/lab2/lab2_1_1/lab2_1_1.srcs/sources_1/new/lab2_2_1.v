module show9 (
    an,
    seg
    );
    output [6:0]seg;
    output [7:0]an;
    //为啥assign an[7:0] = 8'b11111110就不行?
    assign an[7:0]=~8'b00000001;
    assign seg = 7'b0010000;
    
endmodule