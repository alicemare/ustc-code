1.

   a.b.
$$ {a.}
ax+b=add\left\{
\begin{aligned}
mul\left\{
	\begin{aligned}
	a\\
	x
	\end{aligned}
\right.\\
b
\end{aligned}
\right.
$$

$$
average(w,x,y,z)=mul\left\{
\begin{aligned}
add\left\{
\begin{aligned}
add\left\{
	\begin{aligned}
	w\\
	x
	\end{aligned}
\right.\\
add\left\{
	\begin{aligned}
	y\\
	z
	\end{aligned}
\right.
\end{aligned}
\right.
\\
\frac{1}{2}
\end{aligned}
\right.
$$

   c.使用add{a,b}之后,自己与自己相乘

   d.与c中相同方法自乘三次

   e.类似于秦九韶算法x(x(ax+b)+c)+d



2.

解:

1. a.不是一个算法,因为它违背了确定性,显然符合条件的row有$r_2,r_4$
2. b.不是一个算法,因为它违背了有穷性,质数有无穷多个
3. c.是一个算法,它即为向量点乘的定义,在有穷步内可以执行完确定的所有步骤并且有确定输出
4. d.
5. e.不是一个算法

$$
\frac{\frac{4x+4}{2}-2}{2}-1=x-1
$$

​	若输入x<1,则这个循环无输出



3.

   a.解: $2^n\ge400,n\subset \mathbb{N}$ 得 $n\ge9$

​	故至少要9位才能完成对全班400名同学的编码

   b.解:$2^9-400=112$

​	故最多还能再编入112名同学



4.

|                | binary      | decimal     |
| -------------- | ----------- | ----------- |
| 8-bit positive | 01111111    | 127         |
| 8-bit negative | 10000000    | -128        |
| n-bit positive | 0111...1111 | $2^{n-1}-1$ |
| n-bit negative | 1000...0000 | $-2^{n-1}$  |

​    

5.

解:三位三位的合并,得:
$$
\begin{equation}
\begin{split}
010110_{2}&=26_{8}
\\
1101_{2}&=15_{8}
\\
1111111000_{2}&=1770_{8}
\\
01_{2}&=1_{8}
\end{split}
\end{equation}
$$
6.

解:

​	a. $01 + 1011 \rarr  0001+1011=1100\rarr-4$

​	b.$11+01010101=01011000\rarr88$

​	c.$0101+110=1011\rarr-5$

​	d.$01+10=11\rarr-1$



7.

解:

​	a.同号数字相加如果结果符号位和两操作数符号相同则表示溢出

​	b.只要两数之和大于$2^{16}$,eg: 65535+2

​	c.由二进制补码所表示数字范围知异号数字相加和取值范围为$ 			(-2^{n-1},2^{n-1}-1)$而这个范围即为表示范围

​	d.若两数相加之和进位相同则溢出



8.

解:

​	a.	$\overline{1011} | \overline{1100}=0100|0011=0111$

​	b.	$\overline{1000\&(1100|0101)}=\overline{1000}=0111$

​	c.	$\overline{\overline{1101}}=1101$

​	d.	$0110 | 0000 =0110$



9.

解:

​	a) x5478 AND xFDEA = x5468
​	b) xABCD OR x1234 = xBBFD
​	c) NOT(NOT(xDEFA)) AND (NOT(xFFFF)) = x0000
​	d) x00FF XOR x325C = x32A3	



10.

解:

​	a. 333=63

​	b. $\sum_{i=0}^{n}3*4^i$

​	c. 023+221=300

​	d. 4*4+2=18

​	e. 11011.11

​	f. $(-1)^0*2^{5-2^{e-1}}*101111$

​	g. $ (4^m)^4$
