## 数据结构上机实验报告

### lab4 图

[TOC]

#### t1 无向图的DFS和BFS

##### 问题描述

给出一个图的邻接表描述，输出它的BFS和DFS搜索结果，要求搜索过程中优先访问序号小的节点

##### 算法描述

核心BFS和DFS代码如下：

复习起见，总结下图的两种搜索算法

1. BFS

   > 从初始节点，把未被标记的相邻节点依次入队列，无相邻节点可以标记时，完成遍历，弹出队列下一个元素，循环

   _复杂度_

   ​	空间上 需要维护一个的队列，遍历所有顶点
   $$
   O(n)
   $$
   ​	时间上 如果记顶点数目为$$v$$，次数最大顶边数目为$$e$$，则因为需要遍历各个顶的临边故为
   $$
   O(v*e)
   $$
   代码：

   ```c++
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
   ```

2. DFS

   > 从初始节点，顺序访问下一个随机节点并递归处理

   _复杂度_>

   ​	空间上 遍历所有顶点
   $$
   O(n)
   $$
   ​	时间上 如果记顶点数目为$$v$$，次数最大顶边数目为$$e$$，则因为需要遍历各个顶的临边故为
   $$
   O(v*e)
   $$
   核心代码：

   ```c++
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
   ```

##### 测试结果

以in2.txt为例

![1547115086060](/home/alicemare/.config/Typora/typora-user-images/1547115086060.png)



#### t2&t3 图的最小生成树算法&最短路径

#####  问题描述

给定一个带权的无向图，要求用krusual算法和dijstra算法求其最小生成树的权重和两个目标顶之间的最短路径

##### 算法描述

**krusual算法：**

从当前图的所有边中每次选择权重最小的边，如果此边不与当前的生成树成环，就归入到生成树的集合中，如此到所有顶点均已经被遍历，则得到的就是最小生成树

```c++
void kruskal()
{
    int i,m,n,p1,p2;
    int length;
    int index = 0;          
    int vends[MAX]={0};     // 用于保存"已有最小生成树"中每个顶点在该最小树中的终点。
    EData rets[MAX];        
    EData *edges;           

    edges = getEdges();
    sortEdges(edges, mEdgNum);//排序

    for (i=0; i<mEdgNum; i++)
    {
        p1 = getPosition(edges[i].begin);      
        p2 = getPosition(edges[i].end);        

        m = getEnd(vends, p1);                 
        n = getEnd(vends, p2);                 
        // 
        if (m != n)
        {//无环路,表示这个当前最小边符合条件
            vends[m] = n;                       // 设置m在"已有的最小生成树"中的终点为n
            rets[index++] = edges[i];           // 保存结果
        }
    }
    delete[] edges;

    length = 0;
    for (i = 0; i < index; i++)
        length += rets[i].weight;
    cout << length << endl;
}
```

**dijstra算法：**

从起始点出发，选择顶点集关联边中权重最小的边，把这个边的邻顶归入顶集，直到到达结束点，则生成的轨道就是权重最短路径

```c++
void dijkstra(int vs, int prev[], int dist[])
{
    int i,j,k;
    int min;
    int tmp; 

    for (i = 1; i < mVexNum; i++)
    {
        // 寻找当前最小的路径；
        min = INF;
        for (j = 0; j < mVexNum; j++)
        {
            if (flag[j]==0 && dist[j]<min)
            {
                min = dist[j];
                k = j;
            }
        }
        flag[k] = 1;

        // 修正
        for (j = 0; j < mVexNum; j++)
        {
            tmp = getWeight(k, j);
            tmp +=min; 
            if (flag[j] == 0 && (tmp  < dist[j]) )
            {
                dist[j] = tmp;
                prev[j] = k;
            }
        }
    }

    cout <<  mVexs[vs].data << endl;

}
```

##### 测试结果

均以in2.txt作为测试输入用例

krusual算法

> 56893

dijstra算法

> 1159

![1547116386075](/home/alicemare/.config/Typora/typora-user-images/1547116386075.png)

#### 实验收获

通过这个实验，了解到了图算法时空效率的重要性，对所谓稀疏矩阵的存储有了直观认识，在边数较多的时候，必须采用邻接表等更节约空间的存储方式，如本次实验所有题目均使用邻接表来完成