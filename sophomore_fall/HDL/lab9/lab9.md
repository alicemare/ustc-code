## lab9

[TOC]



### lab9_1_1

#### 代码

```verilog
`timescale 1ns / 1ps

module onebitadder #(parameter ANDDEALY = 2, ORDEALY = 2, NODEALY =2, TRANS = 2)
    (
    input cin,
    input ain,
    input b,
    input trans,
    output s,
    output cout
    );
    //reg flag = trans;
    wire s_ab;
    wire c1;
    wire c2;
    reg a;
    always @(trans)
        if(trans)   begin
            #NODEALY a = ~ain; 
        end
    assign #(ANDDEALY+ORDEALY+NODEALY) s_ab=a^b;
    assign #ANDDEALY c1=a&b;
    assign #ANDDEALY c2=s_ab&cin;
    assign #(ANDDEALY+ORDEALY+NODEALY) s=s_ab^cin;
    assign #ORDEALY cout=s_ab+c2;
    
endmodule
```

#### 仿真

![1543570225990](/home/alicemare/.config/Typora/typora-user-images/1543570225990.png)

### lab9_2_1

#### 代码

```verilog
`timescale 1ns / 1ps

(* use_dsp48 = "no" *) 
module top
 #(parameter COUNT_SIZE=8) (
    input clk_in,
    input rst_n,
    input updown,
    input enable,
    output reg [COUNT_SIZE-1:0] counter
);
    wire sig;
    signal (clk_in,rst_n,enable,sig);
    always @(posedge sig)begin
    if(updown)
        counter = counter+1;
    else
        counter = counter-1;
    end

endmodule

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
```

#### bitstream





### lab9_3_1

1. 代码

   ```verilog
   `timescale 1ns / 1ps
   
   module seg_ctl(
       input [3:0] x,
       input dot,
       input [7:0] seg_sel,
       output [7:0] an,
       output dp,
       output [6:0] seg
       );
       reg dp;
       reg [6:0] seg;
       assign an = seg_sel;
       always @(*)
       begin
           if(dot)
               dp = 0;
           else 
               dp = 1;
       end
       always @(*)
       begin
           case(x)
                      0 : seg = 7'b1000000;
                      1 : seg = 7'b1111001;
                      2 : seg = 7'b0100100;
                      3 : seg = 7'b0110000;
                      4 : seg = 7'b0011001;
                      5 : seg = 7'b0010010;
                      6 : seg = 7'b0000010;
                      7 : seg = 7'b1111000;
                      8 : seg = 7'b0000000;
                      9 : seg = 7'b0010000;
                      
           default: seg = 7'b0110000;
           endcase
               
       end
   endmodule
   
   module top(
       input   clk,
       input   rst,
       input   enable,
       output  [7:0]   an,
       output  dp,
       output  [6:0]   seg
       );
   
   wire    clk_5m;
   wire    rst_n;
   reg     pulse_10hz;
   reg     [7:0]   seg_sel;
   reg     dot;
   reg     [3:0]   seg_din;    
   reg     [22:0]  cnt; 
   reg     [3:0]   deci_cnt;
   reg     [3:0]   sec_cnt;
   reg     [3:0]   ten_cnt;
   reg     [3:0]   min_cnt;
      
   clk_wiz_0    clk_wiz_0(.clk_in1    (clk),.clk_out1   (clk_5m),.reset      (rst),.locked(rst_n));
   seg_ctl ctrl( seg_din, dot, seg_sel, an, dp, seg);
   
   always@(posedge clk_5m or negedge rst_n)
   begin
       if(~rst_n)
           cnt <= 23'h0;   //清零
       else if(enable)begin
           if(cnt<23'd500000)
               cnt <= cnt + 1;
           else    
               cnt <= 23'h0;
       end
   end
   always@(posedge clk_5m or negedge rst_n)
   begin
       if(~rst_n)
           pulse_10hz   <= 1'b0;
       else if(cnt==23'd499999)
           pulse_10hz   <= 1'b1;
       else
           pulse_10hz   <= 1'b0;
   end
   
   always@(posedge clk_5m or negedge rst_n)
   begin
       if(~rst_n)
           deci_cnt    <= 4'h0;
       else if(pulse_10hz)
       begin
           if(deci_cnt>=4'h9)
               deci_cnt <= 4'h0;
           else
               deci_cnt <= deci_cnt + 4'h1;
       end
   end
   
   always@(posedge clk_5m or negedge rst_n)
   begin
       if(~rst_n)
           sec_cnt    <= 4'h0;
       else if(pulse_10hz && deci_cnt==9)
       begin
           if(sec_cnt>=4'h9)
               sec_cnt <= 4'h0;
           else
               sec_cnt <= sec_cnt + 1'b1;
       end
   end
   
   always@(posedge clk_5m or negedge rst_n)
   begin
       if(~rst_n)
           ten_cnt    <= 4'h0;
       else if(pulse_10hz && deci_cnt==9 && sec_cnt==9)
       begin
           if(ten_cnt>=4'h5)
               ten_cnt <= 4'h0;
           else
               ten_cnt <= ten_cnt + 1'b1;
       end
   end
   
   always@(posedge clk_5m or negedge rst_n)
   begin
       if(~rst_n)
           min_cnt    <= 4'h0;
       else if(pulse_10hz && deci_cnt==9 && sec_cnt==9 && ten_cnt ==9)
       begin
           if(min_cnt>=4'h9)
               min_cnt <= 4'h0;
           else
               min_cnt <= min_cnt + 1'b1;
       end
   end
   
       
   always@(posedge clk_5m or negedge rst_n)
   begin
       if(~rst_n)
       begin
           seg_sel <= 8'b0;
           seg_din <= 4'h0;
           dot     <= 1'b0;
       end
       else case(cnt[15:13])
           3'b000:
           begin
               seg_sel <= 8'b11111110;
               seg_din <= deci_cnt;
               dot     <= 1'b0;
           end
           3'b001:
           begin
               seg_sel <= 8'b11111101;
               seg_din <= sec_cnt;
               dot     <= 1'b1;
           end
           3'b010:
           begin
               seg_sel <= 8'b11111011;
               seg_din <= ten_cnt;
               dot     <= 1'b0;
           end        
           3'b011:
           begin
               seg_sel <= 8'b11110111;
               seg_din <= min_cnt;
               dot     <= 1'b1;
           end        
           3'b100:
           begin
               seg_sel <= 8'b11111111;
               seg_din <= 4'h0;
               dot     <= 1'b0;
           end        
           3'b101:
           begin
               seg_sel <= 8'b11111111;
               seg_din <= 4'h0;
               dot     <= 1'b0;
           end        
           3'b110:
           begin
               seg_sel <= 8'b11111111;
               seg_din <= 4'h0;
               dot     <= 1'b0;
           end        
           3'b111:  
           begin
               seg_sel <= 8'b11111111;
               seg_din <= 4'h0;
               dot     <= 1'b0;
           end        
           endcase      
   end
   endmodule
   ```

2. bitstream



### 课后题

1. 2_1

   Number of BUFG/BUFGCTRL :	2

   Number of Slice LUTS used :   15

   NUmber of FF used :  30

   Number of DSP48E1 slices used:  0

   Number of IOs used :  12

   ![1543564246712](/home/alicemare/.config/Typora/typora-user-images/1543564246712.png)

2. 2_2

   Number of BUFG/BUFGCTRL :	2

   Number of Slice LUTS used :   8

   NUmber of FF used :  22

   Number of DSP48E1 slices used:  1

   Number of IOs used :  12

   ![1543564565461](/home/alicemare/.config/Typora/typora-user-images/1543564565461.png)

3. 2_3

   Number of BUFG/BUFGCTRL :	2

   Number of Slice LUTS used :   15

   NUmber of FF used :  30

   Number of DSP48E1 slices used:  0

   Number of IOs used :  12

   ![1543569651569](/home/alicemare/.config/Typora/typora-user-images/1543569651569.png)

   ![1543569570692](/home/alicemare/.config/Typora/typora-user-images/1543569570692.png)

4. 2_4

   Number of BUFG/BUFGCTRL :	2

   Number of Slice LUTS used :   15

   NUmber of FF used :  30

   Number of DSP48E1 slices used:  0

   Number of IOs used :  12

   ![1543569982908](/home/alicemare/.config/Typora/typora-user-images/1543569982908.png)

   ![1543569278031](/home/alicemare/.config/Typora/typora-user-images/1543569278031.png)