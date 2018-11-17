`timescale 1ns / 1ps

module eightbit_counter(
    output [7:0]Q,
    input Enable,
    input Clk,
    input Clear
    );
    wire a,b,c,d,e,f,h;
    T_FF FF0 (Enable,Clk,Clear,Q[0]);
    assign a = Enable&Q[0];
    T_FF FF1 (a,Clk,Clear,Q[1]);
    assign b = a&Q[1];
    T_FF FF2 (b,Clk,Clear,Q[2]);
    assign c = b&Q[2];
    T_FF FF3 (c,Clk,Clear,Q[3]);
    assign d = c&Q[3];
    T_FF FF4 (d,Clk,Clear,Q[4]);
    assign e = d&Q[4];
    T_FF FF5 (e,Clk,Clear,Q[5]);
    assign f = e&Q[5];
    T_FF FF6 (f,Clk,Clear,Q[6]);
    assign h = f&Q[6];
    T_FF FF7 (h,Clk,Clear,Q[7]);
endmodule
/*
module D_FF(input D, input Clk, output reg Q);
    always @ (posedge Clk)
        Q <= D;
    
endmodule

module T_FF(input T,input Clk,input clear, output reg Q);
    wire a;
    assign a = ~Q&T+T&~Q;
    D_FF FF (a,Clk,Q);
endmodule
*/
module T_FF (input T,input Clk,input clear,output reg Q);
    always @ (posedge Clk)
        begin
        if(clear)
        Q <= 1'b0;
        else if (T)
        Q <= ~Q;
        else 
        Q <=Q;
        end    
endmodule