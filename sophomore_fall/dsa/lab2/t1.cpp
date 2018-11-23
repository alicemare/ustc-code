//这题怎么看都是用数组方便把!
//用栈和队列的话就必须都用了吧估计

#include"stack.h"
using namespace std;
int main()
{
	//editor ed;
	stack ed;
	stack tmp;
	char cursor = '#';
	ed.push(cursor);
	char input[20],input2; 
	int N,x;
	cin>>N;
	while(N--)
	{
		ed.out();
		tmp.out();
		cin>>input;
		switch(input[0])
		{
			case 'G':
			{
				ed.out();
				break;
			}
			case 'I':
			{
				cin>>x;
				getchar();//消除输入n时的回车
    			char ch;
    			while(x--){
        			ch=getchar();
      				ed.push(ch);    
    			}		
    			while(tmp.top())
        			ed.push(tmp.pop());
				break;
			}
			case 'R':
			{
				cin>>x;
				//do something 
				break;
			}
			case 'D':
			{
				cin>>x;
				while(ed.top()!='#'){
					cout<<"这里执行了!"<<endl;
					//根本push不进去!为啥?
					char c = ed.pop();
					tmp.push(c);
					cout<<"出循环前tmp:";
					tmp.out();
				}
    			cout<<"此时tmp:";
    			tmp.out();
				cout<<"----------"<<endl;
    			//此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
    			for(int i=0;i<x;i++)
        		tmp.pop();
    			//	插回去
    			while(tmp.top())
        			ed.push(tmp.pop());
				break;
			}
			default:
			{
				//do something
				break; 
			}
		}
	}
	return 0;
}
