`timescale 1ns / 1ps

module moore(
    input rst,
    input clk,
    input [1:0] ain,
    //output curr_state,
    //output next_state,
    output reg yout  
    );
reg [3:0]curr_state,next_state;
parameter S0=4'b0000;
always@(posedge clk or posedge rst)
begin
    if(rst)
        curr_state  <= S0;
    else
        curr_state  <= next_state;
end

always@(*)
begin
    next_state = {curr_state[1:0],ain[1:0]};
end

always@(posedge clk or posedge rst)
begin
    if(rst)
        yout <= 1'b0;
    else if(curr_state==4'b0100)
        yout <= 1'b0;
    else if(curr_state==4'b1100)
        yout <= 1'b1;
    else if(curr_state==4'b1000)
        yout <=  ~yout;
end

endmodule
