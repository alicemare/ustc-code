## lab1

2018.12.4

PB17030889 吉志远

lab1：给出R0和R1两个16bit正数，将其最大公约数(gcd)求出并置于R0作为输出

----

#### 汇编程序代码

```assembly
;;2018.12.4
;;put the value of gcd of r0 and r1 to r0
;;author:pb17030889
;;enveriment:ubuntu18.04LTS
.ORIG x3000
GCD 	NOT R2,R1	;
		ADD R2,R2,#1	;r2=-r1
SUB		ADD R0,R0,R2	;r0=r0-r1
		BRp SUB
		BRz DONE
		ADD R0,R0,R1	;如果r0为负，则需要加上r1才为正余数
DONE	ADD R3,R0,#0	;temp r3=r1
		ADD R0,R1,#0	
		ADD R1,R3,#0	
		BRnp GCD
		HALT
.END

```

#### 正确性验证

x300a为halt位置

![1543939146816](/home/alicemare/.config/Typora/typora-user-images/1543939146816.png)

#### 复杂度分析

##### 空间复杂度

该程序仅使用了R0,R1,R2,R3 4个寄存器，没有使用内存等

时间复杂度

> 假定R0为x，R1为y且x>y	（x<y同样成立

由于使用的是传统的“更相减损术”，算法大致过程为

执行[x/y]次减法

得到余数x和原来的y