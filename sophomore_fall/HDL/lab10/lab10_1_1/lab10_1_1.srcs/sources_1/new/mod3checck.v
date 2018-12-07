`timescale 1ns / 1ps
module mod3check(input clk, input reset, input ain,output reg [3:0]count, output  yout);
reg [1:0] state, nextstate;
parameter S0=2'b00,//0mod3  
          S1=2'b01,//1mod3
          S2=2'b10,//2mod3
          S3=2'b11;//3
always @(posedge clk or negedge reset)
begin
    if(reset)
        count<=4'b0000;//清零
    else if(ain)
        count=count+1;
end
always @(posedge clk or posedge reset) // always block to update state
if (reset)
state <= S0;
else 
state<=nextstate;

always @(*) // always block to compute nextstate
    begin
    nextstate = S0;
case(state)
S0: if(ain)
        nextstate = S1;
S1: if(ain)
        nextstate = S2;
    else
        nextstate = S1;
S2: if(!ain)
        nextstate = S2;
        else nextstate = S3;
S3: if(ain)
       nextstate  = S1;
    else
       nextstate  = S3;
endcase
end
assign  yout = (state==S3)&&(ain);
endmodule