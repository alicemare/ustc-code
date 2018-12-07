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
             pulse<=1'b0;
             if(Enable)
                 if(cnt==10'd2499999)
                    pulse <= ~pulse;
          end
    endmodule
    
    
    (* use_dsp48 = "no" *) 
    module top
     #(parameter COUNT_SIZE=8) (
        input clk_in,
        input rst_n,
        input rst,
        input updown,
        input enable,
        output reg [COUNT_SIZE-1:0] counter
    );
        wire sig;
        signal (clk_in,rst,enable,sig);
        always @(posedge sig)begin
        if(rst_n)
            counter=8'b00000000;
        else begin
        if(updown)
            counter = counter+1;
        else
            counter = counter-1;
        end
        end
 endmodule 