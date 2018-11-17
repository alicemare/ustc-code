#include"String.h"
int main (){
    String s;
    cin>>s;
    s.del(2);
    s.str[2]='0';
    cout<<s<<endl;
    cout<< s.size()<<endl;
}