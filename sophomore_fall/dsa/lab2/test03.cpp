//想不到我居然还需要研究最基本的输入输出
//c过于丑陋了
#include<iostream>
using namespace std;
int main (){
    int x;
    char c;
    cin>>x;
    c=getchar();
    cout<<x<<'$'<<c<<endl;
}
/* 结论
 * cin了一个x,回车还是没有被吃掉,getchar直接从缓冲区读了回车进来,感觉有些那个啥...
 * */