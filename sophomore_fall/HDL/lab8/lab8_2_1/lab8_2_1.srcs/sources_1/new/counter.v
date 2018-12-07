`timescale 1ns / 1ps

module counter(
    input clk_in,
    input rst,
    output reg [6:0] seg,
    output reg [7:0]an
    );
    reg [3:0] first;
    reg [3:0] second;
    
    reg [16:0] count;
    reg [22:0] delay;
    wire test;
    wire clk;
    wire rst_n;
    reg [6:0] sseg;
    clk_wiz_0   clk_wiz_0(
    .clk_in1    (clk_in),
    .clk_out1   (clk),
    .reset      (rst),
    .locked     (rst_n)
    );
    always @(posedge clk or posedge rst)
        begin
            if(rst) delay <= 0;
            else 
            delay <=delay+1;
            
        end    
    assign test = &delay;//当且仅当delay全为1(计数一个周期)的时候test才是1
    always @(posedge test or posedge rst)
    begin
        if(rst)begin
            first<=0;second <=0;
            end
        else if(first == 4'd9)begin
            first<=0;
             if(second == 4'd9)//99
             second <=0;
             else second<=second+1;
        end
        else
            first <= first+1;
        end
        
    always @(posedge clk or posedge rst)
    begin
        if(rst) count<=0;
        else
        count<=count+1;
    end
    always @(*)begin
       case(count[18:17])
       2'b00:begin
       sseg = first;
       an=8'b11111110;
       end
       2'b01:begin
       sseg = second;
       an=8'b11111101;
       end
       endcase
      
    end
    always @(*)begin
    case(sseg)

                    0 : seg <= 7'b1000000; 
                    1 : seg <= 7'b1111001;
                    2 : seg <= 7'b0100100;
                    3 : seg <= 7'b0110000;
                    4 : seg <= 7'b0011001;
                    5 : seg <= 7'b0010010;
                    6 : seg <= 7'b0000010;
                    7 : seg <= 7'b1111000;
                    8 : seg <= 7'b0000000;
                    9 : seg <= 7'b0010000;
    
    endcase
    end
endmodule
