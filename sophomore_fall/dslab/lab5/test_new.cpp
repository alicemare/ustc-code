//测试new出来的数组是怎么被初始化的
#include<iostream>
using namespace std;
//可行的malloc版本
int* mall1(){
    int *p=new int [10];
    //值初始化
    return p;
}
//不可行的版本
int *mall2(){
    int p[10];
    return p;
    //warning: address of local variable 'p' returned
}
int main (){
    int *p = mall1();
    for(int i=0;i<10;i++)
        cout<<p[i];
    cout<<endl;
}