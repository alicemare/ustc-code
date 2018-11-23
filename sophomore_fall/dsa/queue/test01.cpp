/* test01 文件
 * 用于检测在一个栈中函数所分配的空间能不能被入队列
 * 很显然在栈中创建的m,n均被入队了?
 * 查看源代码可以看到此处有new操作
 * template <typename T> ListNodePosi(T) List<T>::insertAsLast(T const& e){
       _size++; return trailer->insertAsPred(e);
   }
   template <typename T> ListNodePosi(T) ListNode<T>:: insertAsPred(T const & e){
	    ListNodePosi(T) x = new ListNode(e,pred,this);
	    pred->succ = x;
	    pred = x;
	    return x;//新节点的位置
    }
 */
#include"queue.h"
#include<iostream>
Queue<int> x;
void test(int n){
    int m=1;
    x.enqueue(m);
    x.enqueue(n);
}
int main (){
    int n =2;
    test(n); 
    while(int temp = x.dequeue())
        std::cout<<temp<<std::endl;
}
