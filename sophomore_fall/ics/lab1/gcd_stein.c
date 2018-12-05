#include<stdio.h>
int main(){
	int a=10;
	int b=45;
	int acc=0;
	while((a&1)==0&&(b&1)==0){
		acc++;
		a=a>>1;
		b=b>>1;
		
	}
	while((a&1)==0)a=a>>1;
	while((b&1)==0)b=b>>1;
	if(a<b){
		int t=a;
		a=b;
		b=t;

	}
	while((a!=b)){
		a-=b;
		if(a<b){int t=a;a=b;b=t;}

	}
	printf("%d",b<<acc);
	return 0;

}
