module D_ff_down (input D, input Clk, output reg Q);
always @ (negedge Clk)
if(~Clk)
begin
Q <= D;
end
endmodule