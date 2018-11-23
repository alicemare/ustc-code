#include"editor.h"
using namespace std;
int main()
{
	editor txt;
	char input[20],input2; 
	int N,x;
	cin>>N;
	while(N--)
	{
		cin>>input;//cin明显和getchar不一样
		switch(input[0])
		{
			case 'M':
			{
				cin>>x;
				txt.move(x);
				break;
			}
			case 'G':
			{
				txt.get();
				break;
			}
			case 'I':
			{
                cin>>x;
				txt.insert(x);
				break;
			}
			case 'R':
			{
				cin>>x;
				txt.rotata(x);
				break;
			}
			case 'D':
			{
				cin>>x;
				txt.del(x); 
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
