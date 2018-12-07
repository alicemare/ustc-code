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
             else if(Enable)
                 if(cnt==10'd2499999)
                    pulse <= ~pulse;
          end
    endmodule

(* use_dsp48 = "yes" *) 
module top
 #(parameter COUNT_SIZE=8) (
    input clk_in,
    input rst_n,
    input updown,
    input enable,
    output wire [COUNT_SIZE-1:0] counter
);
    wire sig;
    signal (clk_in,rst_n,enable,sig);
    c_counter_binary_0 uniters(.CLK(sig),.UP(updown),.Q(counter));


endmodule