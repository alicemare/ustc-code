### hw03

#### 1.

​	a. state diagram

![hw03](/home/alicemare/Documents/ustc-code/sophomore_fall/ics/graphviz/hw03.png)

​	b. 3 bits for that $2^3=8$while $2^4=16,2^2=4$ and there are 5 states

#### 2. 

​		$2^7*16=2048$

####  	3.

​	a. 

​		01,1

​	b.

​		$2^{10}=1024>800>512=2^9$ That means we need 10 bits of adress line

​		They will still be 3

​	c.

​		we can add  $2^{10}-800$  (i.e.),224 more locations and not have to increase the width of the 				program counter. 

#### 4.

​	a. $2^2=4$

​	b. 16

​	c. 8

​	d. 

| WE   | A[1:0] | Di[15:0] | D[15:0] | Write/Read |
| ---- | ------ | -------- | ------- | ---------- |
| 0    | 01     | xFADE    | x4567   | R          |
| 1    | 10     | xDEAD    | xDEAD   | W          |
| 0    | 00     | xBEFF    | x0123   | R          |
| 1    | 11     | xFEED    | xFEED   | W          |



#### 5.



#### 6.

PC program counter

IR instruction regesiter

CC nzp condition codes

...

|         | PC    | IR    | MAR   | MDR   | R0    | R1    | R2    | R3    | R4    | R5    | R6    | R7    |
| ------- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| FETHC   | x3004 | x62BE | X3003 | X62BE | X3000 | X3000 | X3002 | X3000 | X3000 | X3000 | X3000 | X3000 |
| DECODE  | x3004 | x62BE | X3003 | X62BE | X3000 | X3000 | X3002 | X3000 | X3000 | X3000 | X3000 | X3000 |
| EVAL    | x3004 | x62BE | X3003 | X62BE | X3000 | X3000 | X3002 | X3000 | X3000 | X3000 | X3000 | X3000 |
| FETCHOP | x3004 | x62BE | X3000 | X62BF | X3000 | X3000 | X3002 | X3000 | X3000 | X3000 | X3000 | X3000 |
| EXE     | x3004 | x62BE | X3000 | X62BE | X3000 | X3000 | X3002 | X3000 | X3000 | X3000 | X3000 | X3000 |
| STORE   | x3004 | x62BE | X3000 | X62BE | X3000 | X62EF | X3002 | X3000 | X3000 | X3000 | X3000 | X3000 |

#### 7.

​	a.  $2^{11}=2048>1511>1024=2^{10}$

​	b. $2^6=64$

​	c. 32-3*6-11=3

#### 8.

> 0101000000100000 
>
> 1001011010111111 
>
> 0001011011100001 
>
> 0001001001000011 
>
> 0000101000000001  
>
> 0001000000100001 
>
> 1111000000100101

#### 9.

if R2 >= 9

mov R4 , $1 ; IMM num

else

mov R4, $0