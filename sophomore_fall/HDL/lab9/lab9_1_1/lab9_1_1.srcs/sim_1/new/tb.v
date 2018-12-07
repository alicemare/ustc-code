`timescale 1ns / 1ps


module test(
    );
    reg a,b,cin;
    reg trans;
    wire s,cout;
    
    onebitadder #(3,3,2,1) dutd(cin,a,b,trans,s,cout);
    initial begin
    #0 a=0;b=0;cin=0;trans=0;
    end
    initial begin
    #3 a=1;
    #2 b=1;
    #5 a=0;
    #5 cin=1;
    #6 b=0;
    #5 a=1;
    #10 trans = 1;
        #10 b=1;
        #10 a=0;
        #10 cin=1;
        #10 b=0;
        #10 a=1;
    end
    
    
endmodule
