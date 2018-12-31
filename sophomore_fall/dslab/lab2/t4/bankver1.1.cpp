int clk = -1; //全局变量,表示时钟
#include <iostream>
#include "queue.h"
using namespace std;
#define MAXSIZE 1000 //表示顾客最多数
struct client
{
    int num;
    int business; //初始化业务金额
    int arrvtime; //初始化到达时间
    int waittime;  //通过计算得到逗留时间
    bool arrive()
    {                        //顾客是否到达
        if (clk == arrvtime) //根据是否到达该顾客的"登场"时间来2
            return true;
        return false;
    }
} custom[MAXSIZE]; //存储顾客信息
class bank
{
  private: //银行只用维护资金money,要接待的顾客数目和两个队列即可
    int money;
    int numofClient; //需要接待顾客
    int closetime;
    int aver; //平均办理业务时间

  public:
    bool busying = false;
    Queue<client> qa;
    Queue<client> qb;
    Queue<client> wait; //等待队列
    bank(int m, int n, int t, int a)
    {
        numofClient = m;
        money = n;
        closetime = t;
        aver = a;
    }
    void update(Queue<client> &q);
    bool close();
    void log();
    void check();
    void over();
    void busy(int curclock);
};

void bank::busy(int curclock)
{
    cout << clk << "银行正忙->"<< clk+aver << endl;
    for (int i = curclock; (i <= curclock + aver) && (i < closetime); i++)
    {
        if (qa.front().arrive())
        {
            cout << clk <<"时："<< qa.front().num+1 <<"号进入等待队列" << endl;
            wait.enqueue(qa.dequeue());
        }
        if (i!=curclock+aver)
            clk++;
    }
    clk-=1;//别问我为啥减一，不减一的话clk还是多算了一秒钟，导致刚busying完之后wait队列顾客会在下一秒才进行
    return ;
}
void bank::update(Queue<client> &q)
{
    client temp = q.dequeue();
    if (temp.business + money >= 0)
    { //能够满足
        temp.waittime = clk - temp.arrvtime;
        cout << temp.num + 1 << "号"<<clk<<"时开始业务，银行办理10s" << endl;
        busy(clk);
        money += temp.business;
        cout << temp.num +1<<"办理完后，银行有" << money << endl;
        if (temp.business > 0)
        { //如果有存入
            check();
            cout << clk << "检查队列b完毕" << endl;
        }
    }
    else
    { //借款且大于银行现有金额入第二个队列
        cout << temp.num + 1 << "号无法满足，进入等候队列" << endl;
        qb.enqueue(temp);
    }
    //在此栈帧中temp被销毁前拷贝到数组中
    custom[temp.num] = temp;
}

void bank::check()
{
    //检查二号队列
    int size = qb.size();
    for (int i = 0; i < size; i++)
    {
        client temp = qb.dequeue(); //出队头
        if (money + temp.business >= 0)
        { //满足条件

            temp.waittime = clk - temp.arrvtime;
            cout << temp.num + 1 << "号离开，银行办理10s" << endl;
            busy(clk);
            money += temp.business;
            cout << "银行有" << money << endl;
            //加上的一个aver为等待前一个顾客办理业务用时
            //只有这种情况必须等待到上一个存钱顾客完成业务才能离去
            //2018.11.24 17:38
            //在顾客到来间隔小于aver时间到来时会出错,过于明显了
        }
        else
            qb.enqueue(temp); //将其放置到队尾
        custom[temp.num] = temp;
    }
}
void bank::log()
{ //银行工作日志
    while (!qb.empty())
    { //银行关门时候仍然有顾客
        client temp = qb.dequeue();
        temp.waittime = closetime - temp.arrvtime;
        custom[temp.num] = temp;
    }
    int totalwaittime = 0;
    cout << "顾客号:"
         << " 到达时间 "
         << " 驻留时间 "
         << " 离开时间 " << endl;
    for (int i = 0; i < numofClient; i++)
    {
        cout << i+1 << '\t' << custom[i].arrvtime << "  \t" << custom[i].waittime << "  \t" << custom[i].arrvtime + custom[i].waittime << endl;
        totalwaittime += custom[i].waittime;
    }
    cout << "平均时长" << totalwaittime / numofClient << endl;
}

bool bank::close()
{
    if (clk == closetime + 1) //多留一个因为closetime+1时不参与循环
        return true;
    return false;
}

int main()
{
    int n, total;
    int time, aver;
    cin >> n >> total >> time >> aver;           //得到输入初始化数据
    bank *test = new bank(n, total, time, aver); //构造银行对象

    for (int i = 0; i < n; i++)
    { //初始化顾客结构体数组
        custom[i].num = i;
        cin >> custom[i].business >> custom[i].arrvtime;
        test->qa.enqueue(custom[i]); //入顾客队列
    }
    while (!test->close())
    {
        if (!test->wait.empty())
        { //等待队列里边的都是已经到来过，可以并且优先办理的
            cout << "有等待顾客,先处理之前在等待的"<<test->wait.front().num +1<<"号"<< endl;
            test->update(test->wait);
        }
        if (test->qa.front().arrive())
            test->update(test->qa);

        clk++;
    }
    //银行关闭,打印业务日志
    test->log();
}
