`timescale 1ns / 1ps

module testbench(

    );
    reg clk,D,s;
    wire Qa,Qb,Qc,Qd;
    
    SR_latch SR (clk,s,Qd);
    D_latch Dla(D,clk,Qa);
    D_ff_up DFU(D,clk,Qb);
    D_ff_down DFD(D,clk,Qc);
    initial begin 
        clk=0;
        D=0;
        s=0;
    #40 D=1;
    #10 clk=1;
    #10 D=0;
    #10 D=1;
    #5 s=1;
    #10 D=0;
    #15 clk=0;
    #10 D=1;
    #15 D=0;s=0;
    #5  D=1;
    #10 D=0;
    #10 clk=1;
    #10 D=1;
    #5 D=0;
    #10 D=1;
    #10 s=1;
    #15 clk=0;
    #10 D=0;
    #30 s=0;
           
    end
    
endmodule
