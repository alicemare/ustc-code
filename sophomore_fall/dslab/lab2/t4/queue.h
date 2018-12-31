#include"../list.cpp"
//#include"../list/list.h"
/* 第一次报错,stackoverflow说是没有用到名字空间
 * warning: there are no arguments to ‘first’ that depend on a template parameter,
 * so a declaration of ‘first’ must be available [-fpermissive]
 */
template<typename T> class Queue:public List<T>{//队列模板类(继承自list)
	public:
		void enqueue(T const &e) {this->insertAsLast(e);}
		T dequeue(){return this->rm(this->first());}
		T & front(){return this->first()->data;}
};		
