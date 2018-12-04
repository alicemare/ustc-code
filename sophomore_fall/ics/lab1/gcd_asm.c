//asm风格的c语言实现求gcd
#include<stdio.h>

int main (){
	int x=3;
	int y=789;
	do{
	do{
		x=x+~y+1;
		if(x<0){
			x=x+y;
			break;
		
		}
		if(x==0){
		break;
		}
	}while(1);
	//此时x是余数，y是除数

	int temp = y;
	y=x;
	x=temp;
	//交换，y是余数
	}while(y!=0);
	printf("%d,%d",x,y);

}
