//2018.11.23 9:23 发现getchar()过于麻烦基本无法取消谔谔
//2018.11.23 10:50 取消了所有getchar使用改用cin,
//同时发现所有tmp stack参与的操作均失败于是把stack改入editor类中
#include"stack.h"
class editor{
    private:   
        stack ed;
        stack tmp;
        char cursor='#';//光标
    public:
        editor(){ed.push(cursor);}
        void add(char c);
        void move(int k);
        void insert(int n);
        void del(int n);
        void rotata(int n);
        void get();
        void prev();
        void next();
        int size();
};

void editor::move(int k){
    tmp.clear();
    while(ed.top()!='#')
        tmp.push(ed.pop());
    cout<<"此时tmp:";
    tmp.out();
    //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
    ed.pop();//弹出当前光标
    while(k--)
        ed.push(tmp.pop());
    ed.push(cursor);
    while(tmp.top())
        ed.push(tmp.pop());
    ed.out();
}
void editor::insert(int n){
    tmp.clear();
    while(ed.top()!='#')
        tmp.push(ed.pop());
    cout<<"此时tmp:";
    tmp.out();
    //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
    char input[100000];
    cin>>input;
    for(int i = 0;input[i]!='\0';i++)
        ed.push(input[i]);
    while(tmp.top())
        ed.push(tmp.pop());
    ed.out();//方便调试
}
void editor::del(int n){
    tmp.clear();
    while(ed.top()!='#')
        tmp.push(ed.pop());
    cout<<"此时tmp:";
    tmp.out();
    //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
    for(int i=0;i<n;i++)
        tmp.pop();
    //插回去
    while(tmp.top())
        ed.push(tmp.pop());
    ed.out();//方便调试
}
void editor::rotata(int n){
    tmp.clear();
    stack trans;
    while(ed.top()!='#')
        tmp.push(ed.pop());
    //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
    for(int i=0;i<n;i++)
        trans.push(tmp.pop());
    //插回去
    while(trans.top())
        ed.push(trans.pop());
    while(tmp.top())
        ed.push(tmp.pop());
    ed.out();//方便调试
}
void editor::get(){
    ed.out();
}
int editor::size(){
    return this->ed._size;
}