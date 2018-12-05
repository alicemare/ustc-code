# lab0 实验报告

----
2018.11.24
PB17030889 吉志远



### part.1 program code

the code below is writen use python

```bash
$ xxd -b program.bin
00000000: 00110000 00000000 00100000 11111111 00100010 11111111  0. .".
00000006: 00100100 11111111 00101010 11111111 01011001 00100000  $.*.Y 
0000000c: 01010110 00000001 00000100 00000001 00011001 00000010  V.....
00000012: 00010010 01000001 00000100 00000010 00010100 10000010  .A....
00000018: 00001111 11111001 01010111 01000000 00001000 00000001  ..W@..
0000001e: 00011001 00000101 01010000 00100000 00010001 00100000  ..P . 
00000024: 11110000 00100101                                      .%
```

```python
import struct
data=[49,0,138,156,0,2,0,1,128,0]
pro=[48,0,32,255,34,255,36,255,42,255,89,32,86,1,4,1,25,2,18,65,4,2,20,130,15,249,87,64,8,1,25,5,80,32,17,32,240,37]
with open('data.bin','wb') as fp:
    for x in data:
        a = struct.pack('B',x)
        fp.write(a)
print('done')
with open('program.bin','wb') as fp:
    for x in pro:
        a = struct.pack('B',x)
        fp.write(a)
print('done')         
```

### part .2  how do I get the algorithm

#### 算法逻辑

lc3 没有提供位运算, 所以只能从"字符串"角度入手, 逐个字符的处理, 也即检测R0每一位的数字是多少, 并将其向右移动一位即可, 伪码描述为

```python
for(i in range [1:15])
	R0[i-1] = R[i]
```

####　具体实现

由于lc3只提供了加法, 求与运算, 只需判断R0第i位具体值为0或1, 再在存放结果的寄存器中对应的i-1位加上R0第i位的值, 然后通过与自己相加实现 X2 来依次移位

通过设置掩码 IN 和 OUT 将IN从x0002依次左移为x8000, OUT 相应的从x0001依次对应左移为x8000, 每次让IN-MASK和R0求与, 若结果为1, 代表R0这一位为1, 相应地, 存储结果的寄存器应该加上对应的OUT-MASK, 如此循环, 设置循环出口为IN-MASK溢出. 此时只有最高位不能判断, 再根据最高位是符号位, 来判断算数右移应该添加的位为1或0

#### lc3 汇编描述

1. 加载数据

   ```assembly
   	.ORIG x3000
   	LDI R0,data		;加载数据
   	LDI R1,IMASK	;in掩码
   	LDI R2,IMASK	;out掩码
   	LDI R5,LBIT		;最高位判断
   	ADN R4,R4,#0		;存储结果
   ```

2. 循环判断

   ```assembly
   LOOP	AND R3,R0,R1	;INMASK与R0求与
           BRz NONE		;若此位为0,不必让结果加上OMASK
           ADD R4,R4,R2	;此位为1,R4低一位加上OMASK
   NONE    ADD R1,R1,R1	;IMASK左移
           BRz DONE		;若溢出,表示所有位判断结束,为出口
           ADD R2,R2,R2	;OMASK左移
           BRnzp LOOP		;循环
   
   ```

3. 最高位设置

   ```assembly
   DONE    AND R3,R5,R0	;判断R0最高位为1或0
           BRn POS			;若为0,最高位为0,算术右移最高位为0
           ADD R4,R4,R5    ;若为1,则右移最高位为1,需要加上8000
   POS     AND R0,R0,#0	;清零R0
           ADD R0,R4,#0	;结果赋值给R0
           HALT			;;
   ```

4. 数据

   ```assembly
   DATA  .FILL x3100
   IMASK .FILL x3101
   OMASK .FILL x3102
   LBIT  .FILL x3103
   
   .END
   ```

### part.3 how do I write the program

emmmm....先设计基本逻辑, 然后根据ISA提供的几个指令, 设计算法, 写成汇编语言, 使用lc3as汇编, 在lc3-sim中验证, 再根据各个指令的机器码, 转win, 在010Editor中写入机器码, save, 再在lc3-sim中验证, 调试....

#### 伪码描述

```python
while(lc3sim显示R0结果不正确)
    vim lab0.asm
    ./lc3as lab0.asm
    ./lc3sim < in_testtxt | grep R0 
    
for(item in lab0.asm)
	item.trans01()
```

### part.4 test and refine

> 这里本来是想肝一个自动化测试脚本的, 接受r0的输入并通过一个c程序来判断输出是否对应, 但是介于自己过菜, 不知道怎么获得lc3sim之类的输出, (大概是重定向stdin stdout ?) 但是总是失败, 于是只能手动执行修改r0的sh script, 然后和c文件输出通过grep对比...

```c++

/* lc3 lab0测试文件
 * 产生16位的从-32768到32767的16位输出
*/#include <iostream>
using namespace std;

int main() {
        for(int int1 = -32768;int1<=32767;int1++) {
        	int int2 = int1>>1;		//右移一位
        	printf("%x->%x\n",int1,int2);
     	return 0;
	}
}
```

```bash
#! /bin/bash
# 这个脚本只是大致思路,执行时总失败...
for ((i=0xffff; i<0x0fff; i++)); do
	testbench="file lab0.obj\n file data.obj\n memory x3100 $i\n break set x3011\n finish\n quit\n"
	# 在lc3模拟器中打开lab0.obj data.obj,修改输入数据r0,设置断点,获得输出,退出
	./lc3sim < testbench  | grep R0
	# 将输入重定向,并得到r0
	./a.out | grep $i
	# 执行c文件,得到i对应输出
		
done
```

总之大致就是这样, 最后只能肉眼来判断了...

附 使用lab0要求中输入的情况

![1543145083437](/home/alicemare/.config/Typora/typora-user-images/1543145083437.png)

![1543145133802](/home/alicemare/.config/Typora/typora-user-images/1543145133802.png)