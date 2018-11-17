#include<iostream>
using namespace std; 

#define STACK_MAX 10000
class stack {
    private:
        char data[STACK_MAX];
        int size;
    public:
        stack() {       // Constructor
            size = 0;
        }
        ~stack() { }    // Destructor
        char top() {
            if (size == 0) {
                fprintf(stderr, "Error: stack empty\n");
                return -1;
            }
            return data[size-1];
        }
        void push(int d) {
            if (size < STACK_MAX)
                data[size++] = d;
            else
                fprintf(stderr, "Error: stack full\n");
        }
        void pop() {
            if (size == 0)
                fprintf(stderr, "Error: stack empty\n");
            else
                size--;
        }
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