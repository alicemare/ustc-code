#include"list.cpp"
#include<iostream>
/*
template<typename T> class Queue:public List<T>{//队列模板类(继承自list)
	public:
		void enqueue(T const &e) {insertAsLast(e);}
		T dequeue(){return remove(first());}
		T & front(){return first()->data;}
};		
*/
int main (){
    List<int> l;
    l.insertAsFirst(0);
    std::cout<<l[1];
}