#include<iostream>
#include<string>
using namespace std;
const int MAXSIZE=10;

struct node{
    int num;//客户序号
    string event_type;
    int begin_time;
    int end_time;
    int amount;
    node * next;
};

struct client{
    int arrive_time;
    int dur_time;
    int amount;
    client * next;
};

class queue{
    private:
        int base[MAXSIZE];
        int rear;
        int front;
    public:
        queue(){rear=0;front=0;}
        node & front();
        node & rear();
        //void enqueue(node e);//队尾入元素
        void dequeue(node e);//删除队头
        int size(){return(rear-front+MAXSIZE)%MAXSIZE;}
        void enqueue(int x){
            if((rear+1)%MAXSIZE == front)
                fprintf(stderr, "Error: queue overflow\n");
            base[rear]=x;
            rear=(rear+1)%MAXSIZE;
            return;
        }
};