#include <iomanip>
#include <iostream>
using namespace std;

class EData
{
  public:
    int start;  
    int end;    
    int weight; 

  public:
    EData() {}
    EData(char s, char e, int w) : start(s), end(e), weight(w) {}
};

// 邻接表
class ListUDG
{
#define MAX 10000
#define INF 10000   //权正无穷
  private:
    // 邻接表中表对应的链表的顶点
    class ENode
    {
        int ivex;        // 该边所指向的顶点的位置
        int weight;      // 该边的权
        ENode *nextEdge; // 指向下一条弧的指针
        friend class ListUDG;
    };

    class VNode
    {
        int data;         // 顶点信息
        ENode *firstEdge; // 指向第一条依附该顶点的弧
        friend class ListUDG;
    };

  private:       // 私有成员
    int mVexNum; // 图的顶点的数目
    int mEdgNum; // 图的边的数目
    VNode mVexs[MAX];

  public:
    // 创建邻接表对应的图(自己输入)
    ListUDG();
    ~ListUDG();
    void print();
    void dijkstra(int vs, int vexs[], int dist[], int end);

  private:
    int getPosition(char ch);
    // 将node节点链接到list的最后
    void linkLast(ENode *list, ENode *node);
    // 获取边<start, end>的权值；若start和end不是连通的，则返回无穷大。
    int getWeight(int start, int end);
    // 获取图中的边
};

ListUDG::ListUDG()
{
    int c1, c2;
    int v, e;
    int i, p1, p2;
    int weight;
    ENode *node1, *node2;

    // 输入"顶点数"和"边数"
    //cout << "input vertex number: ";
    cin >> mVexNum;
    //cout << "input edge number: ";
    cin >> mEdgNum;
    if (mVexNum < 1 || mEdgNum < 1 || (mEdgNum > (mVexNum * (mVexNum - 1))))
    {
        cout<<"-1"<<endl;
        return;
    }

    // 初始化"邻接表"的顶点
    for (i = 0; i < mVexNum; i++)
    {
        //cout << "vertex(" << i << "): ";
        mVexs[i].data = i;
        mVexs[i].firstEdge = NULL;
    }

    // 初始化"邻接表"的边
    for (i = 0; i < mEdgNum; i++)
    {
        // 读取边的起始顶点和结束顶点
        //cout << "edge(" << i << "): ";
        int v1, v2;
        cin >> v1 >> v2;
        cin >> weight;
        c1 = v1 - 1;
        c2 = v2 - 1;

        p1 = getPosition(c1);
        p2 = getPosition(c2);
        // 初始化node1
        node1 = new ENode();
        node1->ivex = p2;
        node1->weight = weight;
        // 将node1链接到"p1所在链表的末尾"
        if (mVexs[p1].firstEdge == NULL)
            mVexs[p1].firstEdge = node1;
        else
            linkLast(mVexs[p1].firstEdge, node1);
        // 初始化node2
        node2 = new ENode();
        node2->ivex = p1;
        node2->weight = weight;
        // 将node2链接到"p2所在链表的末尾"
        if (mVexs[p2].firstEdge == NULL)
            mVexs[p2].firstEdge = node2;
        else
            linkLast(mVexs[p2].firstEdge, node2);
    }
}

ListUDG::~ListUDG(){}

void ListUDG::linkLast(ENode *list, ENode *node)
{
    ENode *p = list;

    while (p->nextEdge)
        p = p->nextEdge;
    p->nextEdge = node;
}

int ListUDG::getPosition(char ch)
{
    int i;
    for (i = 0; i < mVexNum; i++)
        if (mVexs[i].data == ch)
            return i;
    return -1;
}

void ListUDG::print()
{
    int i, j;
    ENode *node;

    cout << "List Graph:" << endl;
    for (i = 0; i < mVexNum; i++)
    {
        cout << i << "(" << mVexs[i].data << "): ";
        node = mVexs[i].firstEdge;
        while (node != NULL)
        {
            cout << node->ivex << "(" << mVexs[node->ivex].data << ") ";
            node = node->nextEdge;
        }
        cout << endl;
    }
}

int ListUDG::getWeight(int start, int end)
{
    ENode *node;

    if (start == end)
        return 0;

    node = mVexs[start].firstEdge;
    while (node != NULL)
    {
        if (end == node->ivex)
            return node->weight;
        node = node->nextEdge;
    }

    return INF;
}

void ListUDG::dijkstra(int vs, int prev[], int dist[], int end)
{
    int i, j, k;
    int min;
    int tmp;
    int flag[MAX]; // flag[i]=1表示"顶点vs"到"顶点i"的最短路径已成功获取。

    // 初始化
    for (i = 0; i < mVexNum; i++)
    {
        flag[i] = 0;                // 顶点i的最短路径还没获取到。
        prev[i] = 0;                // 顶点i的前驱顶点为0。
        dist[i] = getWeight(vs, i); // 顶点i的最短路径为"顶点vs"到"顶点i"的权。
    }

    // 对"顶点vs"自身进行初始化
    flag[vs] = 1;
    dist[vs] = 0;

    // 遍历mVexNum-1次；每次找出一个顶点的最短路径。
    for (i = 1; i < mVexNum; i++)
    {
        // 寻找当前最小的路径；
        // 即，在未获取最短路径的顶点中，找到离vs最近的顶点(k)。
        min = INF;
        for (j = 0; j < mVexNum; j++)
        {
            if (flag[j] == 0 && dist[j] < min)
            {
                min = dist[j];
                k = j;
            }
        }
        // 标记"顶点k"为已经获取到最短路径
        flag[k] = 1;

        // 修正当前最短路径和前驱顶点
        for (j = 0; j < mVexNum; j++)
        {
            tmp = getWeight(k, j);
            tmp = (tmp == INF ? INF : (min + tmp)); // 防止溢出
            if (flag[j] == 0 && (tmp < dist[j]))
            {
                dist[j] = tmp;
                prev[j] = k;
            }
        }
    }

    for (i = 0; i < mVexNum; i++)
        if (i + 1 == end)
            cout << dist[i] << endl;
}

int main()
{
    int prev[MAX] = {0};
    int dist[MAX] = {0};
    ListUDG *pG;

    pG = new ListUDG();
    int begin, end;
    cin >> begin >> end;
    begin--;
    pG->dijkstra(begin, prev, dist, end);
    return 0;
}
