#include<iostream>
#include "../list/list.cpp"
#define MAXSIZE 10
using namespace std;
struct client{
    int business;
    unsigned int arrvtime;
    unsigned int durtime; 
};
int clk = 0;//全局变量
client custom[MAXSIZE];

class bank{
    private:
        int money;
        List<client> qa;
        List<client> qb;
        
    public:
        //构造函数
        void log();
        void close();
        void status();
};
void bank::log(){
    int buss,t;
    while(n--){
        cin>>buss>>t;
        if(buss<0)
            if(buss+money<0){//无法完成业务,令其入第二个队列
            qb.insertAsLast();
            }
        money += buss;

        clk+=t;


    }
}
int main (){
    int n,total;
    unsigned time,aver;
    cin>>n>>total>>time>>aver;
    bank test(n,total,time,aver);
    test.log();
    test.close();
}