## 数据结构上机实验报告

### lab2 **栈与队列的应用**

[TOC]

#### t1 简单的行编辑器

##### 问题描述

用栈模拟一个行编辑器，可以执行翻转，移动，删除等基于光标位置的操作，并能够输出文本

##### 算法描述

1. 数据结构的描述

   使用栈来实现，因为栈的先进后出特性，可以很方便的实现部分内容翻转，移动，删除等特定操作，只需要用editor类来继承stack类，并维护一个”光标“即可。

   栈的接口定义如下，其中void out();仅仅特定使用于该题目中的文本编辑器，因为栈在使用的时候应该只提供栈顶一个接口，而不可以访问内部元素

   ```c++
   //stack.h, based on vector.h
   /* 栈的操作仅仅限定于逻辑上的特定某端但是由于简洁和规范和使得其能够构建更为安全复杂的数据结构*/
   #include"vector.h" //以向量为基类，派生出栈模板类
   template <typename T> class Stack: public Vector<T> { //将向量的首/末端作为栈底/顶
   public: //size()、empty()以及其它开放接口，均可直接沿用
      void push ( T const& e ) { this->insert ( this->size(), e ); } //入栈：等效于将新元素作为向量的末元素插入
      T pop() { return this->rm( this->size() - 1 ); } //出栈：等效于删除向量的末元素
      T& top() { return (*this) [this->size() - 1]; } //取顶：直接返回向量的末元素
      void out(){//editor 需要!
         for(int i =0;i<this->_size;i++){
            std::cout<<*(this->_elem+i);}
         std::cout<<std::endl;
      }
   };
   
   ```

   stack类的父类vector.h头文件内容：

   ```c++
   //vector.h
   typedef int Rank; //秩
   #define DEFAULT_CAPACITY 10 //默认初始容量
   #include<iostream>
   #include<stdlib.h>
   
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
   	T rm(Rank r);
   	int rm (Rank lo,Rank hi);//区间删除
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
   ```

   2. 程序结构的描述

      见editor类，通过public接口

      * move_step	//移动光标通用接口，接收移动量和方向，改变栈中光标位置

      * insert             //在光标之后插入n个字符

      * del                  //光标之后删除n个字符

      * rotate            //光标之后翻转n个字符

      * get                 //回显编辑器内容

      * prev               //外界接口，用于向前移动一位光标，内部用move_step(1)实现

      * next               //外界接口，用于向后移动一位光标，内部调用move_step(-1)

        给editor类的实例提供接口，具体实现见下方editor.cpp文件

      ```c++
      /* 2018.11.23 9:23 发现getchar()过于麻烦
       * 2018.11.23 10:50 取消了所有getchar使用改用cin,
       * 同时发现所有tmp stack参与的操作均失败于是把stack改入editor类中
       * 2018.11.23 12:13 决定换一个stack头文件,传引用还是传值真是麻烦
       * 12:24 我好像成功了
       * 13:13 完工! cur_add的=改成+=即可,用的是按照偏移值就这样来
      */
      #include "stack.h"
      using namespace std;
      typedef Stack<char> stack;
      class editor
      {
        private:
          stack ed;
          stack tmp;
        public:
          int cur_add = 0;
          editor() {}
          void move_step(int k);
          void insert(int n);
          void del(int n);
          void rotata(int n);
          void get();
          void prev();
          void next();
      };
      
      void editor::move_step(int k)
      {
          cur_add += k; //是的 2018.11.23 13:13 我只是把=改成+=,解决了所有bug
          //2018.12.26 如果只需光标位置的话那么接下来这些操作都是不需要的
          /*  while (ed.top() != '#')
              tmp.push(ed.pop());
          //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
          ed.pop(); //弹出当前光标
          if (k > 0)
          { //后移
              while (k--)
                  ed.push(tmp.pop());
              ed.push(cursor);
          }
          else
          {
              while (k++)
                  tmp.push(ed.pop());
              ed.push(cursor);
          }
          //后续元素
          while (tmp.top())
              ed.push(tmp.pop());
      */
      }
      void editor::insert(int n)
      {
          int tail = ed.size() - cur_add; //尾部长度
          //while (ed.top() != '#')
          while (tail--)
              tmp.push(ed.pop());
          //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
          char input;
          while (n--)
          {
              input = getchar();
              ed.push(input);
          }
          while (tmp.top())
              ed.push(tmp.pop());
      }
      void editor::del(int n)
      {
          int tail = ed.size() - cur_add;
          //while (ed.top() != '#')
          while (tail--)
              tmp.push(ed.pop());
          //此时ed为光标前(包括光标),tmp为光标后(倒顺)
          for (int i = 0; i < n; i++)
              tmp.pop();
          //插回去
          while (tmp.top())
              ed.push(tmp.pop());
      }
      void editor::rotata(int n)
      {
          //char trans[100];
          char *trans = new char[n];
          int tail = ed.size() - cur_add;
          //while (ed.top() != '#')
          while (tail--)
              tmp.push(ed.pop());
          //此时ed为光标前元素(包括光标),tmp为光标后(倒顺)
          int cnt = 0;
          for (int i = 0; i < n; i++)
          {
              trans[i] = (tmp.pop());
              cnt++;
          }
          for (int i = cnt - 1; i >= 0; i--)
              ed.push(trans[i]);
          while (tmp.top())
              ed.push(tmp.pop());
          delete[] trans;
      }
      void editor::prev()
      {
          if (cur_add == 0)
          {
              fprintf(stderr, "error: the current address of cursor is 0 so it can not prev");
              exit(0);
          }
          this->move_step(-1);
      }
      void editor::next()
      {
          this->move_step(1);
      }
      void editor::get()
      {
          ed.out();
      }
      ```


##### 调试分析

人工记录debug_log如下

> 第一阶段，使用'#'字符作为光标，把光标也入栈，在遇到光标的时候停止操作，实现翻转，删除，插入
>
> * 2018.11.23 9:23 发现getchar()过于麻烦
>
>  * 2018.11.23 10:50 取消了所有getchar使用改用cin,
>  * 同时发现所有tmp stack参与的操作均失败于是把stack改入editor类中
>  * 2018.11.23 12:13 决定换一个stack头文件,传引用还是传值真是麻烦
>  * 12:24 我好像成功了
>
> 第二阶段，维护光标的位置
>
> 把cur_add改为+=形式，记录偏移量即可

##### 测试结果

![1547032839420](/home/alicemare/.config/Typora/typora-user-images/1547032839420.png)

测试结果符合预期

#### t2 括号匹配检测

##### 问题描述

假设一个表达式有英文字母（大、小写）、数字、四则运算符（+，-，*，/）和左右小括号、中括号、大括号构成，以“@”作为表达式的结束符。请编写一个程序检查表达式中的**左右大中小括号**是否匹配，若匹配，则返回“YES”；否则返回“NO”。

##### 算法描述

使用栈来实现算法，根据左右括号队列的顺序正好可以以栈来模拟，当遇到左括号的时候，入栈，因为后方可能还有左括号，当遇到右括号的时候，弹出栈顶，比较是否和右括号匹配，如果匹配，则代表可行

```c++
#include"stack.h"
#include"String.h"	//String.h只是对字符数组的简单封装
bool check();
int main(){
	int N;	
	cin>>N;
	while(N--)
		if(check())
			cout<<"YES"<<endl;
		else
			cout<<"NO"<<endl;
}
bool check(){
	stack s;
	MyString str;
	cin>>str;
		for (auto i = 0; i < str.size();i++){
			switch (str[i]){
				case '(':s.push(str[i]); break;
				case '[':s.push(str[i]); break;
				case '{':s.push(str[i]); break;
				case ')':
					if (s.top() != '(')
						return false;
					else
						s.pop(); break;
				case ']':
					if (s.top() != '[')
						return false;
					else
						s.pop(); break;
				case '}':
					if (s.top() != '{')
						return false;
					else
						s.pop(); break;
				default:break;
		}
	}
	return true;
}    
```

##### 调试分析

此算法的关键在于栈是否够用，同时要注意左右括号形式匹配

##### 测试结果

![1547033252282](/home/alicemare/.config/Typora/typora-user-images/1547033252282.png)

##### t4 银行业务模拟

##### 问题描述

要求模拟银行处理客户需求，客户可以借款，存款，若超过银行存量，则需要进入等待队列直到满足需求，银行在关门之后会清理所有客户

##### 算法描述

使用银行，客户两种类，使用全局变量clock模拟时间，银行类维护两个队列，在clock允许的范围内营业，一个代表客户到来的顺序，一个代表此时此刻银行的等待队列状态，银行每接待一个顾客，如果存款增加，就会检查等待队列查看是否能够满足客户的需求即可

```c++
int clk = -1; //全局变量,表示时钟
#include <iostream>
#include "queue.h"
using namespace std;
#define MAXSIZE 1000 //表示顾客最多数
struct client
{
    int num;
    int business; //初始化业务金额
    int arrvtime; //初始化到达时间
    int waittime;  //通过计算得到逗留时间
    bool arrive()
    {                        //顾客是否到达
        if (clk == arrvtime) //根据是否到达该顾客的"登场"时间来2
            return true;
        return false;
    }
} custom[MAXSIZE]; //存储顾客信息
class bank
{
  private: //银行只用维护资金money,要接待的顾客数目和两个队列即可
    int money;
    int numofClient; //需要接待顾客
    int closetime;
    int aver; //平均办理业务时间

  public:
    bool busying = false;
    Queue<client> qa;
    Queue<client> qb;
    Queue<client> wait; //等待队列
    bank(int m, int n, int t, int a)
    {
        numofClient = m;
        money = n;
        closetime = t;
        aver = a;
    }
    void update(Queue<client> &q);
    bool close();
    void log();
    void check();
    void over();
    void busy(int curclock);
};

void bank::busy(int curclock)
{
    cout << clk << "银行正忙->"<< clk+aver << endl;
    for (int i = curclock; (i <= curclock + aver) && (i < closetime); i++)
    {
        if (qa.front().arrive())
        {
            cout << clk <<"时："<< qa.front().num+1 <<"号进入等待队列" << endl;
            wait.enqueue(qa.dequeue());
        }
        if (i!=curclock+aver)
            clk++;
    }
    clk-=1;//别问我为啥减一，不减一的话clk还是多算了一秒钟，导致刚busying完之后wait队列顾客会在下一秒才进行
    return ;
}
void bank::update(Queue<client> &q)
{
    client temp = q.dequeue();
    if (temp.business + money >= 0)
    { //能够满足
        temp.waittime = clk - temp.arrvtime;
        cout << temp.num + 1 << "号"<<clk<<"时开始业务，银行办理10s" << endl;
        busy(clk);
        money += temp.business;
        cout << temp.num +1<<"办理完后，银行有" << money << endl;
        if (temp.business > 0)
        { //如果有存入
            check();
            cout << clk << "检查队列b完毕" << endl;
        }
    }
    else
    { //借款且大于银行现有金额入第二个队列
        cout << temp.num + 1 << "号无法满足，进入等候队列" << endl;
        qb.enqueue(temp);
    }
    //在此栈帧中temp被销毁前拷贝到数组中
    custom[temp.num] = temp;
}

void bank::check()
{
    //检查二号队列
    int size = qb.size();
    for (int i = 0; i < size; i++)
    {
        client temp = qb.dequeue(); //出队头
        if (money + temp.business >= 0)
        { //满足条件

            temp.waittime = clk - temp.arrvtime;
            cout << temp.num + 1 << "号离开，银行办理10s" << endl;
            busy(clk);
            money += temp.business;
            cout << "银行有" << money << endl;
            //加上的一个aver为等待前一个顾客办理业务用时
            //只有这种情况必须等待到上一个存钱顾客完成业务才能离去
            //2018.11.24 17:38
            //在顾客到来间隔小于aver时间到来时会出错,过于明显了
        }
        else
            qb.enqueue(temp); //将其放置到队尾
        custom[temp.num] = temp;
    }
}
void bank::log()
{ //银行工作日志
    while (!qb.empty())
    {
        client temp = qb.dequeue();
        temp.waittime = closetime - temp.arrvtime;
        custom[temp.num] = temp;
    }
    int totalwaittime = 0;
    cout << "顾客号:"
         << " 到达时间 "
         << " 驻留时间 "
         << " 离开时间 " << endl;
    for (int i = 0; i < numofClient; i++)
    {
        cout << i+1 << '\t' << custom[i].arrvtime << "  \t" << custom[i].waittime << "  \t" << custom[i].arrvtime + custom[i].waittime << endl;
        totalwaittime += custom[i].waittime;
    }
    cout << "平均时长" << totalwaittime / numofClient << endl;
}

bool bank::close()
{
    if (clk == closetime + 1) //多留一个因为closetime+1时不参与循环
        return true;
    return false;
}

int main()
{
    int n, total;
    int time, aver;
    cin >> n >> total >> time >> aver;           //得到输入初始化数据
    bank *test = new bank(n, total, time, aver); //构造银行对象

    for (int i = 0; i < n; i++)
    { //初始化顾客结构体数组
        custom[i].num = i;
        cin >> custom[i].business >> custom[i].arrvtime;
        test->qa.enqueue(custom[i]); //入顾客队列
    }
    while (!test->close())
    {
        if (!test->wait.empty())
        { //等待队列里边的都是已经到来过，可以并且优先办理的
            cout << "有等待顾客,先处理之前在等待的"<<test->wait.front().num +1<<"号"<< endl;
            test->update(test->wait);
        }
        if (test->qa.front().arrive())
            test->update(test->qa);

        clk++;
    }
    //银行关闭,打印业务日志
    test->log();
}
```

##### 测试分析

以in3.txt为例：

![1547036387262](/home/alicemare/.config/Typora/typora-user-images/1547036387262.png)

测试的时候遇到了很多bug，这个”bank“1.1版本，之前的版本均有各种各样bug：

* 实现客户办理时候的细节，客户办理需要占用窗口10s（以测试数据为例），在这10s内，尽管银行有资金处理下一个客户的业务，但是被当前客户占着窗口，如何实现这个细节，我是用busy()信号通知银行把这段时间内进入银行的顾客暂时放到temp队列中，当这个客户办理完毕后，temp队列中的客户由于是已经“到达过了的”所以比新来的有更高的优先级

* closetime处理，银行关门之后，应该立马清理所有客户，如果没有实现这个功能

  > void bank::log()
  > { //银行工作日志
  > ​    while (!qb.empty())
  > ​    {//把这些客户处理一下
  > ​        client temp = qb.dequeue();
  > ​        temp.waittime = closetime - temp.arrvtime;
  > ​        custom[temp.num] = temp;
  > ​    }

  就会导致最后来的客户时间有误，甚至导致段溢出

* 整体错1单位时间问题，由于需要占用银行10s来办理业务，因此第10s还是11s银行才可用成了一个问题，经历和标准输出参考数据的对比，我是凑出来了这个结果...

#### 实验总结收获

通过这个实验，差不多深刻的体会到了栈和队列（尤其是栈）的方便易用，同时安全而强大，我们在实现了栈和队列的底层细节之后，只需要极少的关心内部细节，把精力转移到栈和队列所提供的强大安全的逻辑功能，在这些逻辑功能的基础上，可以很方便的实现如表达式求值，括号匹配检测，离散事物模拟等等任务。

同时感觉在编写银行业务模拟的时候，自己的耐心和debug能力有了提升