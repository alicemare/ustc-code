#include<iostream>
using namespace std; 

#define STACK_MAX 100000
class stack {
    private://只需要维护一个数组和size即可
        //char data[STACK_MAX];
        //int size;
    public:
        int _size;
        char data[STACK_MAX];
        stack() {_size = 0;}  // Constructor
        ~stack() { }    // Destructor
        void clear(){
            data[STACK_MAX] = {'\0'};
        }
        char top() {
            if (_size == 0)
                return 0;//'/0'
            return data[_size-1];
        }
        void push(char d) {
            if (_size < STACK_MAX)
                data[_size++] = d;
            else
                fprintf(stderr, "Error: stack full\n");
        }
        char pop() {
            if (_size == 0)
                fprintf(stderr, "Error: stack empty\n");
            else
                return data[_size--];
        }
        void out(){ cout<<data<<endl;}
        //这个只是为了方便调试查看栈中内容
        void size(){cout<<_size;}
};
//感觉我还是驾驭不了对象
/*class stack{
    private:
        char *str;
        char *top_ptr;
    public:
        stack(){str=new char[10000];top_ptr=this->str+1;};
        ~stack(){delete [] str; top_ptr=nullptr;}
        bool empty(){return this->top_ptr;}
        char pop(){
            return *--top_ptr;
        }
        void push(const char ch){
            *top_ptr=ch;
            *++top_ptr='\0';
        }
        char top(){
            if(!this->str)//字符串非空
                return *(top_ptr-1);
            else
                return '\0';
        }
        char operator << (istream & in);//从标准输入中读入
};*/