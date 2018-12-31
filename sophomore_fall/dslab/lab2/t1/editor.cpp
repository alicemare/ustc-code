#include"editor.h"
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
                int step = x-txt.cur_add;
				txt.move_step(step);
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
                getchar();
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
            case 'P':
            {
                txt.prev();
                break;
            }
            case 'N':
            {
                txt.next();
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
