`timescale 1ns / 1ps
module add_two_values_task(ain,bin,sum,cout);
    
    input [3:0] ain,bin;
    output [3:0] sum;
    output cout;
    
    reg [3:0] sum;
    reg cout;
    reg [1:0]c0,c1,c2,c3;
    always @ (ain or bin) begin
    
        add_two_values(ain[0],bin[0],0,c0);
        add_two_values(ain[1],bin[1],c0[1],c1);
        add_two_values(ain[2],bin[2],c1[1],c2);
        add_two_values(ain[3],bin[3],c2[1],c3);
        sum={c3[0],c2[0],c1[0],c0[0]};
        cout = c3[1];
   end
    
    
    
    
    task add_two_values;
        input a,b,cin;
        output reg [1:0] c;
        reg s,cout; 
        begin
        s = a^b^cin;
        cout = (a&b)|(a&cin)|(b&cin);
        c={cout,s};
        end
    endtask
endmodule