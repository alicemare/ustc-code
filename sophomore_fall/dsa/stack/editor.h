/* 2018.11.23 9:23 发现getchar()过于麻烦基本无法取消谔谔
 * 2018.11.23 10:50 取消了所有getchar使用改用cin,
 * 同时发现所有tmp stack参与的操作均失败于是把stack改入editor类中
 * 2018.11.23 12:13 决定换一个stack头文件,传引用还是传值真是麻烦
 * 12:24 我好像成功了
 * 13:13 完工! cur_add的=改成+=即可,用的是按照偏移值就这样来
*/
#include"stack.h"
using namespace std;
typedef Stack<char> stack;
class editor{
    private:   
        stack ed;
        stack tmp;
        char cursor='#';//光标
    public:
        int cur_add=0;
        editor(){ed.push(cursor);}
        void move_step(int k);
        void insert(int n);
        void del(int n);
        void rotata(int n);
        void get();
        void prev();
        void next();
};

void editor::move_step(int k){
    cur_add += k;//是的 2018.11.23 13:13 我只是把=改成+=,解决了所有bug
    while(ed.top()!='#')
        tmp.push(ed.pop());
    //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
    ed.pop();//弹出当前光标
    if(k>0){//后移
    while(k--)
        ed.push(tmp.pop());
    ed.push(cursor);
    }
    else{
    while(k++)
        tmp.push(ed.pop());
    ed.push(cursor);
    }
    //后续元素
    while(tmp.top())
    ed.push(tmp.pop());
    }
void editor::insert(int n){
    while(ed.top()!='#')
        tmp.push(ed.pop());
    //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
    char input;
    while(n--){
    		input=getchar();
    		ed.push(input);    
    }	
    while(tmp.top())
        ed.push(tmp.pop());
}
void editor::del(int n){
    while(ed.top()!='#')
        tmp.push(ed.pop());
    //此时ed为光标前(包括光标),tmp为光标后(倒顺)
    for(int i=0;i<n;i++)
        tmp.pop();
    //插回去
    while(tmp.top())
        ed.push(tmp.pop());
}
void editor::rotata(int n){
    char trans[20];
    while(ed.top()!='#')
        tmp.push(ed.pop());
    //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
    int cnt=0;
    for(int i=0;i<n;i++){
        trans[i]=(tmp.pop());
        cnt++;
    }
    for(int i=cnt-1;i>=0;i--)
        ed.push(trans[i]);
    while(tmp.top())
        ed.push(tmp.pop());
}
void editor::prev(){
    if(cur_add == 0){
        fprintf(stderr,"error: the current address of cursor is 0 so it can not prev");
        exit(0);
    }
    this->move_step(-1);
}
void editor::next(){
    this->move_step(1);
}
void editor::get(){
    ed.out();
}