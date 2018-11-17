//这题怎么看都是用数组方便把!
//用栈和队列的话就必须都用了吧估计

#include<iostream>
using namespace std;
int main()
{
	char txt[100];//文档编辑器
	char input[20],input2; 
	int N,x;
	cin>>N;
	while(N--)
	{
		cin>>input;
		switch(input[0])
		{
			
			case 'G':
			{
				cout<<"Output something"<<endl;
				break;
			}
			case 'I':
			{
				cin>>x;
				while(x)
				{
					cin>>input2;
					if(32<=input2&&input2<=126)
					{
						//do something 
						x--;
					}
				}
				cout<<endl;
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
				//do something 
				break;
			}
			default:
			{
				//do something 
			}
		}
	}
	return 0;
}
