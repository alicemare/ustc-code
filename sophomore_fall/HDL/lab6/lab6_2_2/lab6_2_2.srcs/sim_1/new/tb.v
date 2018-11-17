`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////


module tb(

    );
    reg Clk;
    reg Enable;
    reg Clear;
    wire [7:0] Q;
     eightbit_counter count (Q,Enable,Clk,Clear);
     initial begin 
     Clk = 0;
     Enable = 0;
     Clear = 0;
    end
    always begin
        #5 Clk = ~Clk; 
    end
    initial begin
        #20 Enable = 1;
        #20 Clear = 1;
        #20 Clear = 0;
        #40 Enable = 0;
        #80 Enable = 1;
    end
endmodule
