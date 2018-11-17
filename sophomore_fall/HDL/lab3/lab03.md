## lab03

实验题目 ： lab03 	

学号：PB17030889	吉志远

日期 ： 2018.10.26

实验目标： 学会读取ROM 以及测试文件的编写，学会内存寻址来读取数据



###  lab3_1_1

1. 代码截图

   ```verilog
   `timescale 1ns / 1ps
   module decoder_3to8_dataflow(
       input [2:0] x,
       output [7:0] y
       );
       reg [7:0] y;
       always @(x)
       begin
        case(x)
           0:y=8'b00000001;
           1:y=8'b00000010;
           2:y=8'b00000100;
           3:y=8'b00001000;
           4:y=8'b00010000;
           5:y=8'b00100000;
           6:y=8'b01000000;
           7:y=8'b10000000;
           //8:y=8'b00000100;
         endcase 
       end
                                   
   endmodule
   ```

2. 仿真截图

   ![1540557190441](/home/alicemare/.config/Typora/typora-user-images/1540557190441.png)

3. bitstream

   ![1541150837969](/home/alicemare/.config/Typora/typora-user-images/1541150837969.png)

### lab3_2_1

1. 代码截图

   ```verilog
   odule eight2thre_enecoder(
       input [7:0]v,
       input en_in_n,
       output reg [2:0]y,
       output reg en_out,
       output reg gs
       );
       
       always @ (en_in_n,v)
       begin
           if(en_in_n == 1) begin
               y=3'b111;
               gs = 1;
               en_out = 1;
               end
       
       else
           begin
               gs = 0;
               en_out = 1;
               case (v)
                   8'b0xxxxxxx: y = 3'd0;
                   8'b10xxxxxx: y = 3'd1;
                   8'b110xxxxx: y = 3'd2;
                   8'b1110xxxx: y = 3'd3;
                   8'b11110xxx: y = 3'd4;
                   8'b111110xx: y = 3'd5;
                   8'b1111110x: y = 3'd6;
                   8'b11111110: y = 3'd7;
               default: begin
                   y=3'd0;
                   gs=0;
                   en_out=1;
                   end      
           endcase
       end
       end
   endmodule  
   ```

2. bitstream

   ![1541150890545](/home/alicemare/.config/Typora/typora-user-images/1541150890545.png)


### lab3_3_1

1. 电路设计图

   ![1541150631182](/home/alicemare/.config/Typora/typora-user-images/1541150631182.png)

2. 代码截图

   ```verilog
   `timescale 1ns / 1ps
   module rom_comparator(
       input [1:0]a,
       input [1:0]b,
       output wire eq,
       output wire gt,
       output wire lt
       );
       
       reg [2:0] ROM [15:0];
       assign {lt,gt,eq}=ROM[{b,a}];
       initial $readmemb("memo.mem",ROM,0,15);
       
       
       
   endmodule
   
   ```

3. 仿真文件截图

   ```verilog
   `timescale 1ns / 1ps
   module comparator_th(
   
       );
       reg [1:0] a,b;
       wire lt,gt,eq;
       rom_comparator DUT (.a(a), .b(b),.lt(lt),.gt(gt),.eq(eq));
       
       integer i,j;
       initial begin
           for(i=0;i<4;i=i+1)  begin
               for (j=0;j<4;j=j+1) begin
                   #5;
                   a=i;
                   b=j;
               end
               
           end
       end    
       
   endmodule
   ```

4. 仿真截图

   ![1541150549321](/home/alicemare/.config/Typora/typora-user-images/1541150549321.png)

5. bitstream

   ![1541150870352](/home/alicemare/.config/Typora/typora-user-images/1541150870352.png)