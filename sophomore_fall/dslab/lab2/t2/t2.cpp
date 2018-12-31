#include"stack.h"
#include"String.h"
bool check();
int main(){
	int N;	
	cin>>N;
	while(N--)
		if(check())
			cout<<"YES"<<endl;
		else
			cout<<"NO"<<endl;
}
bool check(){
	stack s;
	MyString str;
	cin>>str;
		for (auto i = 0; i < str.size();i++){
			switch (str[i]){
				case '(':s.push(str[i]); break;
				case '[':s.push(str[i]); break;
				case '{':s.push(str[i]); break;
				case ')':
					if (s.top() != '(')
						return false;
					else
						s.pop(); break;
				case ']':
					if (s.top() != '[')
						return false;
					else
						s.pop(); break;
				case '}':
					if (s.top() != '{')
						return false;
					else
						s.pop(); break;
				default:break;
		}
	}
	return true;
}