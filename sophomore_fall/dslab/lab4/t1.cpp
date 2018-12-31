#include <iostream>
#include <string>
#include "../lab2/queue.h"
#define INTMAX 310
using namespace std;

//从第1个顶点开始计算
typedef struct ListGraph
{
    int bvertex;
    bool find = false;
    int length = 0;
    struct LinkList *begin = nullptr;
} graph;

typedef struct LinkList
{
    struct ListGraph *vertex;
    struct LinkList *next;
} listnode;

void addnode(graph *g, int m, int n)
{
    //在g的m和n两个顶点之间添加一条边
    listnode *p = new listnode; //n待插入
    listnode *q = new listnode; //m
    p->vertex = &g[m];
    q->vertex = &g[n];
    listnode *pre = g[m].begin;
    if (!pre) //如果g[m]空
        g[m].begin = q;
    else
    { //这条要求begin->next中begin必须非空，也就是g[m]链表至少有一个顶点
        for (listnode *iter = g[m].begin; iter->next; iter = iter->next)
            pre = pre->next; //此时pre指向null前的一个节点
        pre->next = q;
    }
    pre = g[n].begin;
    if (!pre)
        g[n].begin = p;
    else
    {
        for (listnode *iter = g[n].begin; iter->next; iter = iter->next)
            pre = pre->next;
        pre->next = p;
    }
}
void create(graph *g)
{
    int nv, ne;
    //cout << "请输入nv，ne" << endl;
    cin >> nv >> ne;
    while (ne--)
    {
        int m, n; //顶点的两个端点
        //cout << "输入两个顶点" << endl;
        cin >> m >> n;
        addnode(g, m, n);
        //cout << "创建" << m << n << "边成功" << endl;
    }
    for (int i = 0; i < INTMAX; i++)
    {
        if (!g[i].begin)
            continue;
    }
}

void sort(graph *g)
{
    //如何按助教的要求来给这排序
    for (int i = 0; i < INTMAX; i++)
    {
        if (!g[i].begin || !g[i].begin->next)
            //如果此节点的邻接链表为空或者只有一个元素
            continue;
        for (listnode *p = g[i].begin; p->next; p = p->next)
            for (listnode *q = p->next; q; q = q->next)
            {
                if (p->vertex->bvertex > q->vertex->bvertex)
                {
                    //逆序，交换
                    listnode temp = *p;
                    p->vertex = q->vertex;
                    q->vertex = temp.vertex;
                }
            }
    }
}
void bfs(graph *g, Queue<int> &Q,int sourc)
{
    g[sourc].find = true;
    cout << sourc<<' ';
    for (listnode *p = g[sourc].begin; p; p = p->next)
    {
        if (!p->vertex->find)
        {
            Q.enqueue(p->vertex->bvertex);
            p->vertex->find = true;
        }
    }
    while (!Q.empty())
        bfs(g,Q,Q.dequeue());
}
void dfs(graph *g, int sourc)
{
    //深度优先搜索
    g[sourc].find = true;
    cout << sourc<<' ';
    for (listnode *p = g[sourc].begin; p; p = p->next)
    {
        if (!(p->vertex->find))
            dfs(g, p->vertex->bvertex);
    }
}
void printout(graph *g)
{
    for (int i = 0; i < INTMAX; i++)
    {
        if (!g[i].begin)
            continue;
        //cout << "g[" << i << "]没有连接任何顶点" << endl;
        else
        {
            cout << i << ":" << endl;
            listnode *p = g[i].begin;
            while (p)
            {
                cout << p->vertex->bvertex;
                p = p->next;
            }
            cout << endl;
        }
    }
}
void clear(graph *g)
{
    for (int i = 0; i < INTMAX; i++)
        g[i].find = false;
}
int main()
{
    graph g[INTMAX];
    for (int i = 0; i < INTMAX; i++)
        g[i].bvertex = i; //初始化
    create(g);
    //printout(g);
    //printout用于debug
    sort(g);
    //cout << "====排序后====" << endl;
    //printout(g);
    int sourc;
    cin >> sourc;
    //cout<<"----"<<endl;
    dfs(g, sourc);
    cout << endl;
    clear(g);
    Queue<int> Q;
    bfs(g, Q,sourc);
    cout << endl;
    return 0;
}