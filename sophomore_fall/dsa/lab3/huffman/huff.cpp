#include "huff.h"
#include <iostream>
using namespace std;
//huff.h方法接口实现

//编码表
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
//  string::erase()重载
//iterator erase(itreator p) 擦除一个字符

Node:: Node(Node * rc, Node * lc){//基于左右子节点的构造
    freq = rc->freq + lc->freq;//huffman
    rightC = rc;
    leftC = lc;
    min = (rc->min < lc->min) ? rc->min : lc->min;
}

void Heap:: push(Node *newNode) {
    //最小堆入堆
    int currentHeapNode = ++heapSize;
    while (currentHeapNode != 1 && *minHeap[currentHeapNode / 2] > *newNode) {//[0.5size即对应节点]
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
    } //endwhile
    
    minHeap[currentHeapNode] = lastNode;
}

bool Node::operator> (const Node &rhs){
    //重载比较操作符
    if(freq > rhs.freq)
        return true;
    if(freq < rhs.freq)
        return false;
    if(freq == rhs.freq)
        if(min > rhs.min)
            return true;
    return false;
}
