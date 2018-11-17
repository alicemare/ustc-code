module rca_dataflow(
    input [3:0]a,
    input [3:0]b,
    input cin,
    output [3:0]s,
    output cout
    );
    wire c,d,e;
    full_adder add1(a[0],b[0],cin,c,s[0]);
    full_adder add2(a[1],b[1],c,d,s[1]);
    full_adder add3(a[2],b[2],d,e,s[2]);
    full_adder add4(a[3],b[3],e,cout,s[3]);
endmodule