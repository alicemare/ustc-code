#include<iostream>
#include"stack.h"
using namespace std;
int main (){
    Stack<int> s;
    //int a = 1;
    s.push(1);
    s.push(2);
    s.push(3);
    cout<< s[0];
    while(s.top())
        cout<<s.pop();
    cout<<endl;
}