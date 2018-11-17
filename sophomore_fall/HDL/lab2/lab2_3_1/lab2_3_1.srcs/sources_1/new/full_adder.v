module full_adder(
    input a,
    input b,
    input cin,
    output cout,
    output s
    );
    assign {cout,s}=a+b+cin;
endmodule