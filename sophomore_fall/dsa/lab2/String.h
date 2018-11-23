#include<iostream>
//#pragma once
using namespace std; 
class String{
    private:
        
        //光标默认置在第一个元素处
    public:
        int cursor=0;//
        char str[10000];
        friend istream& operator>>(istream& in, String & s);
        friend ostream& operator<<(ostream& out,String & s);
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
istream& operator>>(istream &in,String & s){
        in>>s.str;
}
ostream& operator<<(ostream& out,String & s){
    out<<s.str;
}