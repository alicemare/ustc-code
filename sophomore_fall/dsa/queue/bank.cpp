int clk=-1;//全局变量,表示时钟
#include<iostream>
#include "../queue/queue.h"
using namespace std;
#define MAXSIZE 10//表示顾客最多数
struct client{
    int num;
    int business;//初始化业务金额
    int arrvtime;//初始化到达时间
    int durtime; //通过计算得到逗留时间
    bool arrive(){//顾客是否到达
        if(clk==arrvtime)//根据是否到达该顾客的"登场"时间来判断
            return true;
        return false;
    }
}custom[MAXSIZE];//存储顾客信息

class bank{
    private://银行只用维护资金money,要接待的顾客数目和两个队列即可
        int money;
        int numofClient;//需要接待顾客
        int closetime;
        int aver;//平均办理业务时间
        

    public:
        bool busying = false;
        Queue<client> qa;
        Queue<client> qb;
        Queue<client> qwait;
        bank(int m,int n,  int t,  int a){
            numofClient=m;
            money=n;
            closetime=t;
            aver=a;
        }
        void update();
        bool close();
        void log();
        void check();
};

void bank::update(){
    client temp = qa.dequeue();
    if(temp.business+money>=0){//能够满足
        money+=temp.business;
        cout<<temp.num<<"号办理之后money:"<<money<<endl;   
        temp.durtime=0;//可以直接离开
        if(temp.business>0)//如果有存入
                check();
    }
    else {//借款且大于银行现有金额入第二个队列
    qb.enqueue(temp);
    }
    //在此栈帧中temp被销毁前拷贝到数组中
    custom[temp.num]=temp;
}

void bank::check(){
    //检查二号队列
    int size = qb.size();
    for(int i = 0;i < size;i++){
    client temp = qb.dequeue();//出队头
    cout<<temp.num<<"号检查能否满足"<<endl;
    if(money+temp.business>=0){//满足条件
        money+=temp.business;
        cout<<temp.num<<"号办理之后money:"<<money<<endl;      
        temp.durtime=clk-temp.arrvtime;
    }
    else{
        qb.enqueue(temp);//将其放置到队尾
        cout<<temp.num<<"号被重新放到队尾"<<endl;
    }
    custom[temp.num]=temp;
    }
}
void bank::log(){//银行工作日志
    while(!qb.empty()){//银行关门时候仍然有顾客
        client temp = qb.dequeue();
        temp.durtime=closetime-temp.arrvtime;
        custom[temp.num]=temp;
    }
    cout<<"顾客号:"<<" 到达时间 "<<" 驻留时间 "<<" 离开时间 "<<endl;
    for(int i =0;i<numofClient;i++)
        cout<<i<<'\t'<<custom[i].arrvtime<<'\t'<<custom[i].durtime<<'\t'<<custom[i].arrvtime+custom[i].durtime<<endl;    
}

bool bank::close(){
    if(clk==closetime+1)//多留一个因为closetime+1时不参与循环
        return true;
    return false;
}

int main (){
    int n,total;
    int time,aver;
    cin>>n>>total>>time>>aver;//得到输入初始化数据
    bank *test = new bank(n,total,time,aver);//构造银行对象
    for(int i = 0;i<n;i++){//初始化顾客结构体数组
        custom[i].num=i;
        cin>>custom[i].business>>custom[i].arrvtime;
        test->qa.enqueue(custom[i]);//直接入队列A
    }
    while(!test->close()){
        if(test->qa.front().arrive()){
            cout<<clk<<"时:"<<test->qa.front().num<<"号到达"<<endl;
            test->update();
        }
        clk++;   
    }
    //银行关闭,打印业务日志
    test->log();
}