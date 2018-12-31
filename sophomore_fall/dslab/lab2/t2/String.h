#include<iostream>
//#pragma once
using namespace std; 
class MyString{
    private:
        
        //光标默认置在第一个元素处
    public:
        int cursor=0;//
        char str[10000];
        friend istream& operator>>(istream& in, MyString & s);
        friend ostream& operator<<(ostream& out,MyString & s);
        int size(){
            int n = 0;
            char * p = str;
            while(*p++) n++;
            return n;
        }
        void move(int n){
            cursor=n;           
        }
        void next(){move(cursor+1);}
        void prev(){move(cursor-1);}
        void get(){cout<<str<<endl;}
        void rotate(int n){}
        void del(int n){
            int max = cursor+n;
            for(int i = this->size();i>n;i--)
                str[cursor+i]=str[i];

        }
        void insert(int n){}
        char operator[](int n){
            return str[n];
        }

       
};
//友元
istream& operator>>(istream &in,MyString & s){
        in>>s.str;
}
ostream& operator<<(ostream& out,MyString & s){
    out<<s.str;
}