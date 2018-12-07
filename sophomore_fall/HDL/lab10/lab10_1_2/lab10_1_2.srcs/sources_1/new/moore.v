`timescale 1ns / 1ps

module moore(input clk, input reset, input [1:0]x, output reg parity);
reg [2:0] state,nextstate,pre;
reg preout;
parameter S0=0, //defalut 
          S1=1, //01
          S2=2, //10
          S3=3, //11
          S4=4, //0100
          S5=5, //1000
          S6=6; //1100
always @(posedge clk or posedge reset) // always block to update state
begin
pre=state;
if (reset)
state <= S0;
else
state <= nextstate;
end
always @(state) // always block to compute output
begin
preout=parity;
case(state)
S4: parity = 0;
S5: parity = 1;
S6: parity = ~preout;
default parity = preout;
endcase
end
always @(state or x) // always block to compute nextstate
begin
case(state)  
S1:begin 
    if(!x[1]&!x[0])
        nextstate = S4;
    else if(!x[1]&x[0])
        nextstate = S1;
    else if(x[1]&!x[0])
        nextstate = S2;
    else if(&x)
        nextstate = S3;
    end
S2: begin 
        if(!x[1]&!x[0])
            nextstate = S5;
        else if(!x[1]&x[0])
            nextstate = S1;
        else if(x[1]&!x[0])
            nextstate = S2;
        else if(&x)
            nextstate = S3;
    end
S3: begin 
        if(!x[1]&!x[0])
            nextstate = S6;
        else if(!x[1]&x[0])
            nextstate = S1;
        else if(x[1]&!x[0])
            nextstate = S2;
        else if(&x)
            nextstate = S3;
    end
default
    nextstate = state; 
endcase
end
endmodule