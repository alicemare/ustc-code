module display(
    input clk_in,
    input rst_n,
    input [3:0] bcd,
    output reg [7:0] an,//
    output reg [6:0] seg//
    );
    reg [6:0] a1,a2;//十位和个位
     always @ (*)
       begin
       if(bcd>9)begin  a1=7'b1111001;end
       else begin a1 = 7'b1000000; end
       end
       
       always @ (*)
       begin 
       case(bcd)
                       0 : a2 <= 7'b1000000; 
                       1 : a2 <= 7'b1111001;
                       2 : a2 <= 7'b0100100;
                       3 : a2 <= 7'b0110000;
                       4 : a2 <= 7'b0011001;
                       5 : a2 <= 7'b0010010;
                       6 : a2 <= 7'b0000010;
                       7 : a2 <= 7'b1111000;
                       8 : a2 <= 7'b0000000;
                       9 : a2 <= 7'b0010000;
                       10 : a2 <= 7'b1000000; 
                       11 : a2 <= 7'b1111001;
                       12 : a2 <= 7'b0100100;
                       13 : a2 <= 7'b0110000;
                       14 : a2 <= 7'b0011001;
                       15 : a2 <= 7'b0010010;
                       default: a2 <= 7'b0000000;  
       endcase
    end    
    wire clk_out;
    wire locked;
        
    clk_wiz_0 inst (.clk_in1(clk_in),.clk_out1(clk_out),.reset(rst_n),.locked(locked));  
    parameter update_interval = 5000;
    //f=1kHz
    reg  cursel;
    integer cnt;
    
    always @(posedge clk_out)
    begin
        cnt <= 1 + cnt;
        if(cnt == update_interval)
            begin 
            cnt <= 0;//归0    
            cursel <= cursel +1;
        end
    end
    always @(*)
    begin
        an = 8'b11111111;
        case(cursel)
            1'b0:begin seg = a1;an=8'b11111101;end
            1'b1:begin seg = a2;an=8'b11111110;end
        endcase
    end
endmodule
