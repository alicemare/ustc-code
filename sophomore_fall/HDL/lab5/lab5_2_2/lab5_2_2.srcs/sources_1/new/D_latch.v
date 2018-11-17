module D_latch (input D, input Enable, output reg Q);
always @ (D or Enable)
if(Enable)
begin
Q <= D;
end
endmodule