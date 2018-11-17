`timescale 1ns / 1ps

/*module oneHzcounter(
    input clk,
    input reset,
    //input Enable,
    output out,
    input sign
    );
    wire locked;
    clk_wiz_0 inst (clk,out,locked);
    signal count(clk,reset,sign);
endmodule*/
module signal(
    input clk_in,//verilog 100MHz板载时钟源
    input rst_n,
    input Enable,
    output pulse
    );
    wire clk;
    wire locked;
    //调用IP core,100MHz clk_in, 5MHz out->clk
    clk_wiz_0 inst (.clk_in1(clk_in),.clk_out1(clk),.reset(rst_n),.locked(locked));
    
    reg [9:0] cnt;
    //wire pulse;//电平信号
    always @ (posedge clk or negedge rst_n)
    begin 
        if(~rst_n)
        cnt<=10'h0;//置0
        else if (Enable)
            if(cnt>=10'd999)
                cnt<=10'h0;
            else
                cnt<=cnt+10'h1;
     end
     assign pulse = (cnt<=10'd499)?1'b1:1'b0;
endmodule
