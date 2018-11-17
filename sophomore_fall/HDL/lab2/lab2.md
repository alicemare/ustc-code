## 实验报告 

实验题目：lab2				日期 2018.10.19

姓名：吉志远					学号：PB17030889

实验目的：掌握模块调用的方法，利用数据流级设计综合电路

### lab2_1_1

1. 源代码

```verilog
module bcdto7segment_dataflow(
     bcd,
     an,
     seg
    );
     output [7:0] an;
     input [3:0] bcd;
     output [6:0] seg;
     wire [6:0] seg;
     assign an[7:0]=8'b11111110;
     assign seg = 7'b0010000;

endmodule                                                                              
```

2. 生成bitstream

   <img src="/home/alicemare/Pictures/raw/TIM图片20181026194046.jpg" style="zoom:10%" />

### lab2_2_1

1. 源代码

   1. lab2_2_1.v

      ```verilog
      module lab2_2_1(
          v,
          seg,
          z
          );
          
          input [3:0] v;
          output [6:0] seg;
          output z;
          wire [3:0]m;
          wire [7:0] an;
          lab2_2_1_partA(v,z,m);
          bcdto7segment_dataflow light(m,an,seg);
          
      endmodule
      ```

   2. lab2_2_1_partA.v

      ```verilog
      module lab2_2_1_partA(
           v,
           z,
           m
          );
          input [3:0] v;
          output z;
          output [3:0] m;
          comp4bit compare_ten (v,9,z);
          wire [2:0]temp;
          circuitA trans (v[2:0],temp[2:0]);
          mux2to1 mux0 (v[3],0,z,m[3]);
          mux2to1 mux1 (v[2],temp[2],z,m[2]);
          mux2to1 mux2 (v[1],temp[1],z,m[1]);
          mux2to1 mux3 (v[0],temp[0],z,m[0]);
             
      endmodule
      ```

   3. bcdto7segment_dataflow.v

      ```verilog
      module bcdto7segment_dataflow(
           bcd,
           an,
           seg
          );
           output [7:0] an;
           input [3:0] bcd;
           output [6:0] seg;
           reg [6:0] seg;
       	 assign an[7:0]=8'b11111110;
      
          always @(bcd)
          begin
              case (bcd) 
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
         
                  default : seg = 7'b0000000; 
              endcase
          end
          
      endmodule
      ```

   4. circuitA.v

      ```verilog
      module circuitA(
          input [2:0]v,
          output [2:0]temp
          );
          assign temp[2] = v[2]&v[1]&~v[0]+v[2]&v[1]&v[0];
          assign temp[1] = v[2]&~v[1];
          assign temp[0] = v[1]&v[0]+v[2]&~v[1]&v[0];
      endmodule
      ```

   5. mux2o1.v

      ```verilog
      module mux2to1(
          input x,
          input y,
          input s,
          output i
          );
          assign i = s?y:x;
          
      endmodule
      
      ```

2. 仿真截图

   ![1540549017677](/home/alicemare/.config/Typora/typora-user-images/1540549017677.png)

3. 生成bitstream



   ~~为什么和lab2_1_1一样的代码在这里调用的时候总是8个全亮我也不知道哪里出了bug...~~


<img src="/home/alicemare/Pictures/raw/TIM图片20181026194203.jpg" style="zoom:10%" />


<img src="/home/alicemare/Pictures/raw/20181026194021.jpg" style="zoom:10%" />

### lab2_3_1

1. 源代码

   1. full_adder.v

      ```verilog
      module full_adder(
          input a,
          input b,
          input cin,
          output cout,
          output s
          );
          assign {cout,s}=a+b+cin;
      endmodule
      
      ```

   2. rca_dataflow.v

      ```verilog
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
      ```

2. 仿真截图

   ![1540548820909](/home/alicemare/.config/Typora/typora-user-images/1540548820909.png)

3. bitstream


![1540554229339](/home/alicemare/.config/Typora/typora-user-images/1540554229339.png)