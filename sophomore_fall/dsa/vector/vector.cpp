#pragma once
#include<iostream>
#include"vector.h"
#include<stdlib.h>
template <typename T> //元素类型
void Vector<T>::copyFrom(T const* A, Rank lo, Rank hi) { //以数组区间A[lo, hi)为蓝本复制向量
    _elem = new T[_capacity = 2 * (hi - lo)];//申请地址
    _size = 0; //分配空间,规模清零
    while (lo < hi) //A[lo, hi)内的元素逐一
    _elem[_size++] = A[lo++]; //复制至_elem[0, hi - lo)
}

template <typename T> Vector<T>& Vector<T>::operator=(Vector<T> const& V ) {
	if (_elem) delete [] _elem; //释放原有内容
	copyFrom(V._elem, 0, V.size()); //整体复制
	return *this; //返回当前对象的引用,以便链式赋值
	//重载赋值操作符,由于向量有动态申请空间故默认=操作符不能复制
}

//注,同一函数只能有一个析构函数不能重载

//扩容算法
template <typename T> void Vector<T>::expand(){
	if(_size<_capacity) return;//不必扩容
	if(_capacity<DEFAULT_CAPACITY)_capacity = DEFAULT_CAPACITY;//不低于最小容量
	T *oldelem = _elem;
	_elem = new T[_capacity <<= 1];//容量加倍来扩容
	for(int i =0;i<_size;i++)
		_elem[i]=oldelem[i];
	delete []oldelem;//释放旧空间
}//在进行要改变向量容量的算法之前都要进行此函数

template <typename T> void Vector<T>::shrink(){//装填因子过小的时候压缩向量所占空间
	if(_capacity<DEFAULT_CAPACITY << 1) return;
	if(_size<<2 > _capacity) return;//以1/4为界
	T *oldelem = _elem;
	_elem=new T[_capacity >>= 1];//减半
	for(int i = 0;i<_size;i++) _elem[i]=oldelem[i];
	delete []oldelem;
}

template <typename T> T& Vector<T> :: operator [] (Rank r) const//重载下标操作符
	{return _elem[r];}	//assert : 0<=r<_size;
//此处返回引用,也即可以像对数组操作那样来操作向量对应元素
//借助下标操作来实现的一个例子
/*
template <typename T> void permute(Vector<T>& V) { //随机置乱
	for (int i = V.size(); i > 0; i--) //自后向前
	swap(V[i - 1], V[rand() % i]); //V[i - 1]不V[0, i)中某一随机元素交换
}
*/
//vector的接口
template <class T> void swap ( T& a, T& b )
{
  T c(a); a=b; b=c;
}
template <typename T> void Vector<T>::unsort(Rank lo, Rank hi) { //等概率随机置乱向量匙间[lo, hi)
	T* V = _elem + lo; //将子向量_elem[lo, hi)规作另一向量V[0, hi - lo)
	for (Rank i = hi - lo; i > 0; i--) //自后向前
	swap(V[i - 1], V[rand() % i]); //将V[i - 1]不V[0, i)中某一元素随机交换
}
//未必支持内部元素比较大小的成为无序向量
//无序查找接口
//无序查找必须遍历所有元素才可以得出结论
template <typename T> Rank Vector<T>::insert(Rank r, T const &e){
	//先实现insert算法,这个是核心内部调用
	expand();//需要改变大小所以要考虑是否扩容
	for(int i =_size;i>r;i--)
		_elem = _elem[i-1];//顺次向前移动一个单元
	_elem[r]=e;
	_size++;
	return r;
}
//删除操作有两种,区间和单个元素
//在链表中,可以用删除单个元素来实现删除区间
//在数组中,用删除区间来实现删除单个元素//只需移动一次即可
template <typename T> int Vector<T> :: remove (Rank lo,Rank hi){//
	//返回删除元素的个数
	if(lo == hi) return 0;
	while(hi<_size) _elem[lo++]=_elem[hi++];
	_size = lo;//丢弃尾部[lo,_size=hi)的区间
	shrink();
	return hi-lo;
}

template <typename T> T Vector<T> :: remove (Rank r){
	T e = _elem[r];
	remove (r,r+1);
	return e;
}

//针对无序向量的去重操作

/* 该函数为高效版去重
 *
 * 算法的正确性保证:
 * 在初次
 * i=1进入循环,其前方所有元素保持互异
 * 而在循环结束时,i=2前方所有元素互异,以此类推
 */
template <typename T> int Vector <T> :: deduplicate(){
	
	int oldsize = _size;
	Rank i = 1;
	while (i<_size)//自前向后考察
		(find(_elem[i],0,i)<0)?i++:remove(i);
	//在其前继中查找雷同者(之多一个)如无则继续,如有则删除
	return oldsize-_size;	
	//规模变化量
}
template <typename T> void Vector<T>::traverse(void (*visit)(T&)){
//用函数指针机机制的遍历
	for (int i = 0; i < _size; i++) visit(_elem[i]); 
}

template <typename T> template <typename VST> //元素类型、操作器
void Vector<T>::traverse(VST& visit){
	//用函数对象机制的遍历
for (int i = 0; i < _size; i++) visit(_elem[i]);
}

