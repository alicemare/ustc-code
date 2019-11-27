//64位下汇编的传参顺序和寄存器选择
/*;For x64 first six arguments are passed in straight order
;  via RDI, RSI, RDX, RCX, R8, R9 and other are passed via stack
;The result comes back in RAX*/
#include<stdio.h>
int main(){
	printf("%d\n",2);
	return 0;
}
