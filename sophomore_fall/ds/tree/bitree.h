#include<iostream>
using namespace std;
 
struct TreeNode; //定义一个结构体原形
classTree;      //定义一个类原形
classIterator; //定义一个类原形
typedef list<TreeNode*> List; //重命名一个节点链表
 
TreeNode* clone(TreeNode*,List&,TreeNode*);//Clone复制函数
 
struct TreeNode{
   int_data;                  //数据
   TreeNode* _parent;          //父节点
   List_children;             //子节点
   TreeNode(int,TreeNode*);    //构造函数
   void SetParent(TreeNode&); //设置父节点
   void InsertChildren(TreeNode&); //插入子节点
};
 
classTree{
public:
 
 //下面是构造器和运算符重载
   Tree();                            //默认构造函数
   Tree(constTree&);                 //复制构造函数
   Tree(constint);                   //带参数构造函数
   Tree(constint,constlist<Tree*>&);//带参数构造函数
   ~Tree();                           //析构函数
   Tree& operator=(constTree&);      //=符号运算符重载
   bool operator==(constTree&);      //==符号运算符重载
   bool operator!=(constTree&);      //!=符号运算符重载
 
   //下面是成员函数
   void Clear();                      //清空
   boolIsEmpty()const;               //判断是否为空
   intSize()const;                   //计算节点数目
   intLeaves();                      //计算叶子数
   intRoot()const;                   //返回根元素
   intHeight();                      //计算树的高度
 
 
   //下面是静态成员函数
  static boolIsRoot(Iterator);     //判断是否是根
   static boolisLeaf(Iterator);     //判断是否是叶子
   static IteratorParent(Iterator); //返回其父节点
   static intNumChildren(Iterator); //返回其子节点数目
 
   //跌代器函数
   Iteratorbegin();                  //Tree Begin
   Iteratorend();                    //Tree End
   friend classIterator;             //Iterator SubClass
private:
   list<TreeNode*> _nodes;         //节点数组
   list<TreeNode*>::iteratorLIt; //一个节点迭代器
   intheight(TreeNode*);
   intlevel(TreeNode*,Iterator);
};
 
//This is TreeSub Class Iterator
classIterator{
   private: 
    Tree* _tree;                     //Tree data
    list<TreeNode*>::iterator_lit; //List Iterator
   public:
    Iterator();                               //默认构造函数
    Iterator(constIterator&);                //复制构造函数
    Iterator(Tree*,TreeNode*);                //构造函数
    Iterator(Tree*,list<TreeNode*>::iterator);//构造函数
    //运算符重载
    void operator=(constIterator&);          //赋值运算符重载
    bool operator==(constIterator&);         //关系运算符重载
    bool operator!=(constIterator&);         //关系运算符重载
    Iterator& operator++();                   //前缀++运算符
    Iterator operator++(int);                 //后缀++运算符
    int operator*()const;                     //获得节点信息
    bool operator!();                         //赋值运算符重载
  
    typedef list<TreeNode*>::iteratorList;
    friend classTree;
};