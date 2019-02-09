## 数据结构上机实验报告

### lab3 **二叉树的应用** huffman编码

#### 问题描述

用huffman压缩技术实现对任意文件的压缩和解压缩处理

要求对所有的文件类型进行压缩，压缩之后的文件后缀名为huff。

同时，可以对所有后缀名为huff的压缩文件进行解压缩。

#### 算法描述

使用二叉树来给文件huffman编码，先统计字节频率得出权重，然后组织huffman树，可描述为

1. 统计要压缩的文件中字符出现的次数。

​    遍历一遍文件，将字符出现的次数统计在一个结构体数组里，数组里包含字符，字符出现的次数，对该字符的编码。

2. 用得到的数组构建一个Huffman树。

   因为每次要取最小值，所以这里考虑使用小堆来实现。

> 使用堆的好处：用数组的存储方式来实现树的逻辑结构

3. 得到Huffman编码

   向右为1，向左为0

_复杂度>_

​	空间上 只需要一个规模为n的数组
$$
O(n)
$$


​	时间，由于 堆的排序，上滤，交换等均为nlogn型
$$
O(nlogn)
$$


huffman树（堆）的接口

```c++
#include "huff.h"
#include <iostream>
using namespace std;
//huff.h方法接口实现

//编码表,统计各个字符的权重值大小
void Node:: fillCodebook(string * codebook, string &code) {
    if(!leftC && !rightC){
        codebook[data] = code;
        return;
    }
    if(leftC){
        //左节点做0
        code += '0';
        leftC->fillCodebook(codebook, code);
        code.erase(code.end()-1);
    }
    if(rightC){
        //右节点做1
        code += '1';
        rightC->fillCodebook(codebook, code);
        code.erase(code.end()-1);
    }
}
Node:: Node(Node * rc, Node * lc){//基于左右子节点的copy构造
    freq = rc->freq + lc->freq;//huffman
    rightC = rc;
    leftC = lc;
    min = (rc->min < lc->min) ? rc->min : lc->min;
}

void Heap:: push(Node *newNode) {
    //最小堆入堆
    //调整堆容量
    int currentHeapNode = ++heapSize;
    while (currentHeapNode != 1 && *minHeap[currentHeapNode / 2] > *newNode) {//[0.5size即对应树上逻辑子节点]
        //
        minHeap[currentHeapNode] = minHeap[currentHeapNode / 2];
        currentHeapNode = currentHeapNode / 2;
    }
    minHeap[currentHeapNode] = newNode;
}

void Heap:: pop(){
    Node *lastNode = minHeap[heapSize];
    minHeap [heapSize--] = minHeap[1];
    int currentHeapNode = 1;
    int child = 2;
    
    while (child <= heapSize) {
        if (child < heapSize && *minHeap[child] > *minHeap[child + 1])
            child++;

        if (*minHeap[child] > *lastNode)
            break;

        minHeap[currentHeapNode] = minHeap[child];
        currentHeapNode = child;
        child *= 2;
    } //end of while
    
    minHeap[currentHeapNode] = lastNode;
}
```

#### 调试分析

1. 打开文件一定要用二进制形式，"wb","rb"。二进制打开不改变文本内容，也就是把待压缩文件当做字符流来看待
2. 压缩文件有可能出现和源文件等大甚至更大的情况可能是源文件比较小，不够构建huffman堆的一个字节

#### 测试结果

如下图，依次为大小，时间，和文件名

其中后缀为huff表示压缩文件，文件名后缀含_out的文件是解压缩文件

以bmp位图文件为例，原文件[2]test.bmp文件大小为5.5MB，压缩文件2.huff大小907k

解压缩文件[2].test.bmp文件大小5.5MB

![1547034617360](/home/alicemare/.config/Typora/typora-user-images/1547034617360.png)

#### 实验收获

通过这次实验学习了堆的实现，比起一般树的存储方式，堆更有优势，而且便于实现一些优先级搜索算法

同时了解了通过huffman算法来构建最优二叉树的步骤，和文件的读入写入操作