#include<iostream>
#include"queue.h"
using namespace std;
int main (){
    Queue<int> Q;
    Q.enqueue(1);
    cout<<Q.dequeue();
}