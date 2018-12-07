`timescale 1ns / 1ps


module test(
    );
    reg a,b,cin;
    reg trans;
    wire s,cout;
    
    onebitadder #(3,3,2,1) dutd(cin,a,b,trans,s,cout);
    initial begin
    #0 a=1;b=1;cin=1;trans=0;
    end
    initial begin
    #10 a=0;
    #10 b=0;
    #10 a=1;
    #10 cin=0;
    #10 b=0;
    #10 a=0;
    #10 trans = 1;
        #10 b=1;
        #10 a=1;
        #10 cin=1;
        #10 b=1;
        #10 a=1;
    end
    
    
endmodule
