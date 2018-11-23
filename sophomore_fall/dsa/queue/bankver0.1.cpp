/*template<typename T> class Queue:public List<T>{//队列模板类(继承自list)
	public:
		void enqueue(T const &e) {insertAsLast(e);}
		T dequeue(){return remove(first());}
		T & front(){return first()->data;}
};*/
//2018.11.17 15:03 完成基本输入输出
#include<iostream>
#include "../list/list.cpp"
#define MAXSIZE 10
using namespace std;
struct client{
    int business;
    unsigned int arrvtime;
    unsigned int durtime; 
};
unsigned int clk;//全局变量
client custom[MAXSIZE];//存储顾客信息

class bank{
    private://银行只用维护资金money,要接待的顾客数目和两个队列即可
        int money;
        int numofClient;
        List<client> qa;
        List<client> qb;
        
    public:
        bank();
        void log();
        void close();
        void status();
};
void bank::log(){}
int main (){
    int n,total;
    unsigned time,aver;
    //得到输入初始化数据
    cin>>n>>total>>time>>aver;
    //构造顾客数组
    int num = n;
    for(int i = 0;i<n;i++)
        cin>>custom[i].business>>custom[i].arrvtime;
    //输出检测
    //for(int i = 0;i<n;i++)
    //    cout<<custom[i].business<<custom[i].arrvtime<<endl;
}