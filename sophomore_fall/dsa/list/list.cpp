/* list类操作一般是先通过查找等方式找到目标节点的位置p然后进行操作
 * 这也是链表的典型操作方式
 * list 设置头尾哨兵(sentinel node)的好处在于通过这两个null节点,从外部可见的任一节点看来
 * 其前驱和后继均存在,简化算法实现,且不必对边界条件做退化处理
 */
//提高编程效率

//part A.
/* listnode 的c++实现
 * 2018.11.10
 */
//call by logic rather than rank
typedef int Rank;
#define ListNodePosi(T) ListNode<T>* //list节点位置

template <typename T> struct ListNode{//list节点模板类(双向链表实现)
//成员
	T data;
	ListNodePosi(T) pred;
	ListNodePosi(T) succ;
//构造函数
	ListNode(){}
	ListNode(T e,ListNodePosi(T) p =nullptr,ListNodePosi(T) s =nullptr):data(e),pred(p),succ(s){}
	//默认构造函数
//操作接口
	ListNodePosi(T) insertAsPred(T const &e);
	ListNodePosi(T) insertAsSucc(T const &e);
};


//part B. list的定义
template <typename T> 
class List { //列表模板类
private:
	//维护头尾哨兵即可确定链表
	int _size;
	ListNodePosi(T) header; 
	ListNodePosi(T) trailer; //头哨兵、尾哨兵
protected:

	void init(); //列表创建时的初始化
	int clear(); //清除所有节点,返回大小
	void copyNodes(ListNodePosi(T), int); //复制自p处起的n项
	void merge(ListNodePosi(T)&, int, List<T>&, ListNodePosi(T), int); //有序列表区间归并
	void mergeSort(ListNodePosi(T)&, int); //对从p开始连续的n个节点进行归并排序
	void selectionSort(ListNodePosi(T), int); //从p开始的连续n个节点进行选择排序
	void insertionSort(ListNodePosi(T), int); //对从p开始连续n个节点插入排序
public:
//构造函数
	//通过在构造函数中调用方法来初始化
	List() { init(); } //默认
	List(List<T> const& L);//整体复制构造
	List(List<T> const& L, Rank r, int n);//复制自L第r项起的n项
	List(ListNodePosi(T) p, int n); //列表中自位置p的n项
	~List(); //释放(包含头、尾哨兵在内)所有节点
// 只读访问接口
	Rank size() const { return _size; } //规模
	bool empty() const { return _size <= 0; } //判空
	T& operator[](int r) const; //重载,支持循秩访问(必须顺序访问,效率低),标准list操作建议不要使用
	ListNodePosi(T) first() const { return header->succ; } //首节点位置 头哨表的后继
	ListNodePosi(T) last() const { return trailer->pred; } //末节点位置 尾哨兵的前驱
	bool valid(ListNodePosi(T) p) //刞断位置p是否对外合法
	{ return p && (trailer != p) && (header != p); } //将头、尾节点等同于NULL,也即p是否为空/头哨兵/尾哨兵(越界)
	int disordered() const; //列表是否已排序
	ListNodePosi(T) find(T const& e) const//无序list查找
	{ return find(e, _size, trailer); }//从头查找到尾
	ListNodePosi(T) find(T const& e, int n, ListNodePosi(T) p) const;//无序区间查找
	ListNodePosi(T) search(T const& e) const//有序list查找
	{ return search(e, _size, trailer); }
	ListNodePosi(T) search(T const& e, int n, ListNodePosi(T) p) const;//有序区间查找
	ListNodePosi(T) selectMax(ListNodePosi(T) p, int n); //在p及其前n-1个后继中选出最大者
	ListNodePosi(T) selectMax() { return selectMax(header->succ, _size); } //整体最大者
//可写访问接口
	ListNodePosi(T) insertAsFirst(T const& e);
	ListNodePosi(T) insertAsLast(T const& e);
	ListNodePosi(T) insertBefore(ListNodePosi(T) p, T const& e);
	ListNodePosi(T) insertAfter(ListNodePosi(T) p, T const& e);
	T remove(ListNodePosi(T) p); //初除合法位置p处节点,返回被删除节点(
	void merge(List<T>& L) { merge(first(), size, L, L.first(), L._size); } //全列表归并
	void sort(ListNodePosi(T) p, int n); //列表区间排序
	void sort() { sort(first(), _size); } //列表整体排序
	int deduplicate(); //无序去重
	int uniquify(); //有序去重
	void reverse(); //前后倒置
//遍历
	void traverse(void (*)(T&)); //遍历,依次实斲visit操作(函数指针,叧读或局部修改)
	template <typename VST> //操作器
	void traverse(VST&); //遍历,依次实斲visit操作(函数对象,可全局性修改)
}; //List

//part C.list具体实现
/***************************************************
//构造函数的基础,所有new操作符都应该在这个函数和insertnode
当然了这是我自己总结的也不知道对不对,感觉为了防止内存泄漏,以及
自己在插入节点/创建链表是否会在函数返回的时候一起和栈被销毁之类
..........
****************************************************/
template <typename T> void List<T>::init(){//列表初始化,在创建list的时候统一调用
	//申请节点先创建头尾哨兵
	header = new ListNode<T>;
	trailer = new ListNode<T>;
	header->succ = trailer;	
	header->pred = nullptr;
	trailer->pred = header;
	trailer->succ = nullptr;
	_size=0;//记录规模
}

//重载下标算符来进行寻rank访问
template <typename T> 
T & List<T>::operator[](int r) const {//assert 0<= r< _size
	ListNodePosi(T) p = first();
	while(r--)p=p->succ;
	//完成此循环后p在rank=r处
	return p->data;
}

template <typename T> 
//因为是无序查找所以要遍历
//返回在所有元素中等于e且秩最大的元素位置
ListNodePosi(T) List<T>::find(T const &e,int n,ListNodePosi(T)p)const{
	while(0<n--)
		if(e==(p=p->pred)->data) return p;
	return nullptr;
}

//插入接口函数
template <typename T> ListNodePosi(T) List<T>::insertAsFirst(T const& e){
_size++; return header->insertAsSucc(e);
}
template <typename T> ListNodePosi(T) List<T>::insertAsLast(T const& e){
_size++; return trailer->insertAsPred(e);
}
template <typename T> ListNodePosi(T) List<T>::insertBefore(ListNodePosi(T) p, T const& e){
_size++; return p->insertAsPred(e);
}
template <typename T> ListNodePosi(T) List<T>::insertAfter(ListNodePosi(T) p, T const& e){
_size++; return p->insertAsSucc(e);
}
//这些函数的实现都需要最基本的listnode类的在节点前后插入

template <typename T> ListNodePosi(T) ListNode<T>:: insertAsPred(T const & e){
	ListNodePosi(T) x = new ListNode(e,pred,this);
	pred->succ = x;
	pred = x;
	return x;//新节点的位置
}

template <typename T> 
ListNodePosi(T) ListNode<T>::insertAsSucc(T const& e) {
	ListNodePosi(T) x = new ListNode(e, this, succ); //创建新节点
	succ->pred = x; succ = x; //设置逆向链接
	return x; //返回新节点位置
}

//基于复制的构造
//实现了基本的插入函数之后将非常方便编写其它函数
//节点复制
template<typename T> 
void List<T> :: copyNodes(ListNodePosi(T) p, int n){
	//p合法且有n个后继节点
	init();
	while(n--){
		insertAsLast(p->data);
		p=p->succ;//将起自p起的n个依次作为末节点插入即可
	}
}
//基于上一个方法实现的构造函数
template <typename T>//复制从p起的n个节点
List<T>::List(ListNodePosi(T)p, int n){
	copyNodes(p,n);
}

template <typename T>//整体复制
List<T>::List(List<T> const & l){
	copyNodes(l.first(),l.size());
}

template <typename T>//复制自r起的n项目
List<T>::List (List<T> const &l,Rank r,int n){
	copyNodes(l[r],n);
}

//删除p位置的节点
template <typename T> T List<T>::remove(ListNodePosi(T) p){
	T e = p->data;;// backup data
	//双向链表易于实现删除,不必再申请一个节点
	(p->pred)->succ=p->succ;
	p->succ->pred=p->pred;
	delete p;
	_size--;
	return e;
}

//析构函数
//先实现clear()方法,清除所有节点
template <typename T>List<T>::~List(){
	clear();
	delete header;
	delete trailer;
}
template <typename T>int List<T>::clear(){
	//list class在内部维护size 头尾哨兵即可
	int oldsize = _size;
	while(0<_size)
		//remove 改变了_size
		remove(header->succ);
		//不是delete,否则链表被破坏
	return oldsize;
}

//唯一化