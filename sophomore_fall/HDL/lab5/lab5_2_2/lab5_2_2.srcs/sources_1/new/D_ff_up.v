module D_ff_up (input D, input Clk, output reg Q);
always @ (posedge Clk)
if(Clk)
begin
Q <= D;
end
endmodule