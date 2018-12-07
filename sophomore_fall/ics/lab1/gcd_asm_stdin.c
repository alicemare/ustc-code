#include<stdio.h>
int main (int argc, char ** argv){
	int a;
	int b;
	scanf("%d %d",&a,&b);
	int c=0;
	int flag=0;
	do{
	if((a&1)==0)//a是偶数
	{	
		a=a>>1;
		flag=1;
	}
	if((b&1)==0)//a是奇数,b是偶数
	{
		b=b>>1;	
		if(flag){
		c++;
		flag=0;
		}
	}
	//else 什么都不用做
	}while((a&1)==0||(b&1)==0);
	do{
		a-=b;
		if(a<=0){
			if(a==0)
				break;
			//a<0
			int t=a+b;
			a=b;
			b=t;
		}
		//a>b 或者交换后 a'与b'可以直接做下一次减法
	}while(1);
	/*	if(a<b){
		int t=a;
		a=b;
		b=t;
	}
	while((a!=b)){
		a-=b;
		if(a<b){
			int t=a;
			a=b;
			b=t;
		}
	}*/
	a=b;
	int myanswer;
	int myc=c;
	while(--myc>=0){
		a*=2;
	}

	printf("a:%d,b:%d,c:%d,answer:%d,my:%d\n",a,b,c,b<<c,a);
}
