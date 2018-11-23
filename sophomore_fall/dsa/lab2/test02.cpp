/*
 * 2018.11.23 8:42可见这种不是返回引用的总是会被销毁之类?
 * 保留现在的test_t1.cpp给日后debug
 */

//2018.11.23 8:54已经完成debug,原因:stack在pop push的时候没有加引用,导致被销毁?(大概)
#include"stack.h"
int main (){
    stack ed;
    char cur='#';
    ed.push(cur);
    ed.out();
    stack tmp;
    while(ed.top()!='#')
        tmp.push(ed.pop());
    //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
    int n;
    cin>>n;
    getchar();//消除输入n时的回车
    char ch;
    while(n--){
        ch=getchar();
        ed.push(ch);    
    }
    while(tmp.top())
        ed.push(tmp.pop());
    ed.out();
    ed.size();
}