/* 栈的操作仅仅限定于逻辑上的特定某端但是由于简洁和规范和使得其能够构建更为安全复杂的数据结构*/
#include "../vector.h" //以向量为基类，派生出栈模板类
template <typename T>
class Stack : public Vector<T>
{                                                           //将向量的首/末端作为栈底/顶
 public:                                                    //size()、empty()以及其它开放接口，均可直接沿用
   void push(T const &e) { this->insert(this->size(), e); } //入栈：等效于将新元素作为向量的末元素插入
   T pop() { return this->rm(this->size() - 1); }           //出栈：等效于删除向量的末元素
   T &top() { return (*this)[this->size() - 1]; }           //取顶：直接返回向量的末元素
   void out()
   { //editor 需要!
      for (int i = 0; i < this->_size; i++)
      {
         //if(*(this->_elem+i)=='#') continue;
         std::cout << *(this->_elem + i);
      }
      std::cout << std::endl;
   }
};