`timescale 1ns / 1ps

module onebitadder #(parameter ANDDEALY = 2, ORDEALY = 2, NODEALY =2, TRANS = 2)
    (
    input cin,
    input ain,
    input b,
    input trans,
    output s,
    output cout
    );
    //reg flag = trans;
    wire s_ab;
    wire c1;
    wire c2;
    reg a;
    always @(trans)
        if(trans)   begin
            #NODEALY a = ~ain; 
        end
    assign #(ANDDEALY+ORDEALY+NODEALY) s_ab=a^b;
    assign #ANDDEALY c1=a&b;
    assign #ANDDEALY c2=s_ab&cin;
    assign #(ANDDEALY+ORDEALY+NODEALY) s=s_ab^cin;
    assign #ORDEALY cout=s_ab+c2;
    
endmodule
