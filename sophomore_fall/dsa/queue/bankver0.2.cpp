/* 
 *差不多完成了基本输入输出开始调试了 
 */
//2018.11.17
//15:50正在想要不要封装一个client类,让顾客在对应的时间到来,主循环clk依次+10
//16:12发现面向对象编程需要十分清晰的思路和流程图

//2018.11.21
unsigned int clk=0;//全局变量,表示时钟
#include<iostream>
#include "../queue/queue.h"
//#include "../list/list.cpp"
using namespace std;
#define MAXSIZE 10
struct client{
    int num;
    int business;//初始化业务金额
    unsigned int arrvtime;//初始化到达时间
    unsigned int durtime=0; //通过计算得到逗留时间
    bool arrive(){//顾客是否到达
        if(clk==arrvtime)//根据是否到达该顾客的"登场"时间来判断
            return true;
        return false;
    }
}custom[MAXSIZE];//存储顾客信息

class bank{
    private://银行只用维护资金money,要接待的顾客数目和两个队列即可
        int money;
        int numofClient;
        unsigned int closetime;
        unsigned int aver;//平均办理时间
            
    public:
        Queue<client> qa;
        Queue<client> qb;
        bank(int m,int n,unsigned int t,unsigned int a){
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
    //11:25突发感想这样的一个栈中temp能被出入队列吗?
    //看queue.h出队调用rm返回T,front返回T&,入队传入参数为T&
    //做了test01.cpp可以查看下,这个应该是可一入队列的
    if(temp.business+money>0){//能够满足
        money+=temp.business;   
        temp.durtime=aver;//可以直接离开
        //cout<<temp.num<<"号顾客离开时间:"<<clk<<endl;
        if(temp.business>0)//如果有存入
                check();
    }
    else {//借款且大于银行现有金额入第二个队列
    qb.enqueue(temp);
    }
    //在此栈帧中temp被销毁前拷贝到数组中
    custom[temp.num-1]=temp;
}

void bank::check(){
    //检查二号队列
    client temp = qb.dequeue();//出队头
    if(this->money+temp.business>0){//满足条件
        money+=temp.business;   
        temp.durtime=clk-temp.arrvtime;
        //cout<<temp.num<<"号顾客离开时间:"<<clk<<endl;
    }
    else{
        qb.enqueue(temp);//将其放置到队尾
    }
    custom[temp.num-1]=temp;
}
void bank::log(){//银行工作日志
    //由于numofclient发现的bug是初始化的时候初始化反了但是讲道理不应该啊
    //要快点学会git用用
    cout<<"顾客号:"<<" 到达时间 "<<" 驻留时间 "<<" 离开时间 "<<endl;
    for(int i =0;i<numofClient;i++)
        cout<<i<<'\t'<<custom[i].arrvtime<<'\t'<<custom[i].durtime<<custom[i].arrvtime+custom[i].durtime<<endl;
        
}

bool bank::close(){
    if(clk==closetime)
        return true;
    return false;
}

int main (){
    int n,total;
    unsigned time,aver;
    cin>>n>>total>>time>>aver;//得到输入初始化数据
    bank * test = new bank(n,total,time,aver);//构造银行对象
    for(int i = 0;i<n;i++){//初始化顾客结构体数组
        custom[i].num=i;
        cin>>custom[i].business>>custom[i].arrvtime;
        test->qa.enqueue(custom[i]);//直接入队列A
    }
    while(!test->close()){
        //cout<<"现在是"<<clk<<"单位时间"<<endl;
        if(test->qa.front().arrive()){
            cout<<clk<<"时:"<<test->qa.front().num<<"号到达"<<endl;
            test->update();
            //bug*1 clk应该写在if外
        }
        clk++;   
    }
    //银行关闭
    test->log();
}