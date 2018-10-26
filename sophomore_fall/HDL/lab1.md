### 实验报告

实验题目：lab1			日期：<u> 2018年10月12日</u>

姓名： <u>吉志远</u>	学号：<u>PB17030889</u>

实验目的：

了解掌握vivado的三种设计模型

实验截图：

### lab1_1_1

1. 代码

```verilog
`timescale 1ns / 1ps
module lab1_1_1(x,y,s,m);
    output  m;
    input  x,y;
    input s;
    reg  m;
    
    always @(x or y or s)
     if (s == 1'b0)
        m = x;
     else
        m = y;
endmodule
```

2. 原理图

![1539941511482](/home/alicemare/.config/Typora/typora-user-images/1539941511482.png)

3.  bitstream 

![1019_5](/home/alicemare/Downloads/1019_5.jpg)

### lab1_2_2

1. 代码：

```verilog
`timescale 1ns / 1ps

module lab1_2_2(
    input [1:0] x,
    input [1:0] y,
    input s,
    output [1:0] m
    );
    assign #3 m = s?x:y;
endmodule
```

2. 原理图

![1539939471764](/home/alicemare/.config/Typora/typora-user-images/1539939471764.png)



3. 仿真截图

![1539939881801](/home/alicemare/.config/Typora/typora-user-images/1539939881801.png)

4. bitstream

![1019_7](/home/alicemare/Downloads/1019_7.jpg)

###　lab1_3_2



1. 代码

```verilog
`timescale 1ns / 1ps

module lab1_3_2(x,y,s,m);
    output [1:0] m;
    input [1:0] x,y;
    input s;
    reg [1:0] m;
    
    always @(x or y or s)
     if (s == 1'b0)
        m = x;
     else
        m = y;
endmodule
```

2. 原理图

![1539940998524](/home/alicemare/.config/Typora/typora-user-images/1539940998524.png)



### lab1_4_2



1. 代码

```verilog
`timescale 1ns / 1ps

module bcdto7segment_dataflow(
     bcd,
     an,
     seg
    );
     input [7:0] an;
     input [3:0] bcd;
     output [6:0] seg;
     reg [6:0] seg;
    assign an[7:0]=8'b11111110;//使能输入an
    always @(bcd)
    begin
        case (bcd) 
            0 : seg = 7'b0000001;
            1 : seg = 7'b1001111;
            2 : seg = 7'b0010010;
            3 : seg = 7'b0000110;
            4 : seg = 7'b1001100;
            5 : seg = 7'b0100100;
            6 : seg = 7'b0100000;
            7 : seg = 7'b0001111;
            8 : seg = 7'b0000000;
            9 : seg = 7'b0000100;
          
            default : seg = 7'b1111111; 
        endcase
    end
    
endmodule

```

2. 原理图

![1539943120510](/home/alicemare/.config/Typora/typora-user-images/1539943120510.png)

3. bitstream 

![1539943330023](/home/alicemare/.config/Typora/typora-user-images/1539943330023.png)





实验总结：

vivado有三种设计模式，门级，数据流级，和行为级，门级和数据流级适合设计组合电路，主要方法为设计wire,reg等变量再进行assign,always等操作，行为级为描述型，适合设计组合逻辑电路和时序逻辑电路