module SR_latch (input R, input S, output Q);
wire Qbar;
nor (Q, R, Qbar);
nor (Qbar, S, Q);
endmodule