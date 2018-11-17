`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////


module tb(

    );
        wire [3:0] Q;
        //reg cnt_done;
        reg Clk;
        reg Clear;
        reg Enable;
        reg Load;
       
     lab6_2_3 counter(Q,Clk,Clear,Enable,Load);
     initial begin
    // Q = 4'b0111; 
     Clk = 0;
     Enable = 0;
     Clear = 0;
     Load = 0;
    end
    always begin
        #5 Clk = ~Clk; 
    end
    initial begin
        #20 Enable = 1;
        #40 Clear = 1;
        #20 Clear = 0;
        #20 Load = 1;
        #10 Load = 0;
        #80 Enable = 0;
        #40 Enable = 1;
    end
endmodule
