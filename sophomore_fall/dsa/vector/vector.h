//vector ADT和seqvector (可比顺序) 的头文件
//2018.11.9 
#pragma once
typedef int Rank; //秩
#define DEFAULT_CAPACITY 10 //默认初始容量



template <typename T> class Vector {
protected:
	//这部分不应被外部访问但可以被继承子类访问
	//向量在内部维护一个最大大小为_capacity 的 _elem[_capacity]数组其中Rank<_size元素有意义
	//Rank r -> _elem[r]
	//address _elem + r*sizeof(elemtype)
	Rank _size;
	int _capacity;
	T* _elem;//数据区
	void copyFrom(T const * A,Rank lo,Rank hi);//复制区间A[lo,hi)
	void expand();//扩张
	void shrink();//压缩
	bool bubble(Rank lo,Rank hi);//扫描交换
	void bubbleSort(Rank lo,Rank hi);
	Rank partition(Rank lo, Rank hi); //轴点极造算法
	void quickSort(Rank lo, Rank hi); //快速排序算法
	void heapSort(Rank lo, Rank hi); //堆排序(秴后结合完全堆讱解)
public:
// 构造函数
	Vector(int c = DEFAULT_CAPACITY, int s = 0, T v = 0){ //容量为c、规模为s、所有元素初始为v
	_elem = new T[_capacity = c];//new 空间 
	for (_size = 0; _size < s; _elem[_size++] = v); 
	} //s <= c
	Vector(T const* A, Rank lo, Rank hi) { copyFrom(A, lo, hi); }//数组区间复制
	Vector(T const* A, Rank n) { copyFrom(A, 0, n); }//数组整体复制
	Vector(Vector<T> const& V, Rank lo, Rank hi) { copyFrom(V._elem, lo, hi); }//向量区间复制
	Vector(Vector<T> const& V) { copyFrom(V._elem, 0, V._size); }//向量整体复制
//析构函数
	~Vector(){delete []_elem;}
//只读访问接口
	Rank size() const{ return _size; }//返回规模大小
	bool empty() const {return !_size;}//返回是否为空
	int disordered() const;//判断是否元素按照非降序排列
	Rank find(T const & e)const{return find(e,0,(Rank)_size);}//查找等于e且秩最大的元素
	Rank find(T const & e,Rank lo, Rank hi)const;//区间查找
//可写访问接口
	T& operator[](Rank r) const;//下标访问操作符重载
	Vector<T> & operator=(Vector<T> const &);//赋值操作符重载
	T remove(Rank r);
	int remove (Rank lo,Rank hi);//区间删除
	Rank insert(Rank r,T const &e);//默认作为末尾元素而插入
	void sort(Rank lo,Rank hi );
	void sort()/*整体排序*/{sort(0,_size);}
	void unsort(Rank lo,Rank hi);//置乱
	void unsort()/*整体置乱*/{unsort(0,_size);}
	int deduplicate();//去重
//遍历
	void traverse(void (*) (T&));//使用了函数指针,只读或局部修改
	template <typename VST> void traverse(VST&);//使用函数对象,可以全局性修改
	Rank search(T const & e)const {
		return (0>=_size)?-1:search(e,(Rank)0,(Rank)_size);
	}//查找目标元素e,且返回不大于e秩最大元素
	Rank search(T const & e,Rank lo,Rank hi) const;
	int uniquify();//去重
};
//c++public继承不能继承重载运算符和私有成员
/*
template <typename T> class seqvector:public Vector{
	Rank search(T const & e)const {
		return (0>=_size)?-1:search(e,(Rank)0,(Rank)_size);
	}//查找目标元素e,且返回不大于e秩最大元素
	Rank search(T const & e,Rank lo,Rank hi) const;
	int uniquify();//去重

};
*/
