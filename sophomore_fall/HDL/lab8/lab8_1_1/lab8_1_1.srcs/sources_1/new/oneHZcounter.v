`timescale 1ns / 1ps

module signal(
    input clk_in,//verilog 100MHz板载时钟源
    input rst_n,
    input Enable,
    output pulse
    );
    wire clk_out;
    wire locked;
    //调用IP core,100MHz clk_in, 5MHz out->clk
    clk_wiz_0 inst (.clk_in1(clk_in),.clk_out1(clk_out),.reset(rst_n),.locked(locked));
    
    reg [20:0] cnt;//计数器
    /*wire pulse;//电平信号
    always @ (posedge clk_out )
    begin 
        if (Enable)
            if(cnt>=10'd4999998)
                cnt<=10'd0;
            else
                cnt<=cnt+10'd1;
     end
     assign pulse = (cnt<10'd2000000)?1'b1:1'b0;*/
     reg pulse;
     always@(posedge clk_out)
     begin
        if(rst_n)
        cnt<=10'd0;
        if(Enable)
            cnt<=cnt+10'd1;
     end
     always@(posedge clk_out )
          begin
             if(rst_n)
             pulse<=10'd0;
             else if(Enable)
                 if(cnt==10'd2499999)
                    pulse <= ~pulse;
          end
    endmodule
