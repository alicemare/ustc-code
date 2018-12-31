#include <cstdlib>
#include <string>
//霍夫曼树的二叉堆heap实现
using namespace std;

class Node{//霍夫曼节点类
    unsigned char data;
    unsigned int freq;//频率
    unsigned char min;
    Node * leftC;
    Node * rightC;
public:
    Node(){}//默认构造(0或者nullptr)
    //构造初始化
    //Node(const Node &n):data(n.data),freq(n.freq),leftC(n.leftC),rightC(n.rightC){}
    Node(const Node &n){data = n.data; freq = n.freq; leftC = n.leftC; rightC = n.rightC;}
    Node(unsigned char d, unsigned int f): data(d), freq(f), min(d){}
    Node(Node *, Node *);
    void fillCodebook(string *, string &);
    bool operator> (const Node &);//重载频率判断
};

class Heap{//最小堆
    Node ** minHeap;
    int heapSize;
public:
    Heap(){heapSize = 0; minHeap = new Node*[257];}//ASCII最大255字符
    void push(Node *);//出堆
    int size(){return heapSize;}
    void pop();//入堆
    Node * top(){return minHeap[1];}
};
