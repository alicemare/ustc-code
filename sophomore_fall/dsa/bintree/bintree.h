#include "binnode.h"

template <typename T> class BinTree T{
protected:
    int _size;
    BinNodePosi(T) _root;

    virtual int updateHeight (BinNodePosi(T) x);//更新节点高度
    /*
    虚函数,用于多态实现,将接口与实现分离
    指向基类的指针在操作它的多态类对象的时候会根据不同类对象调用相应的函数
    */    
   void updateHeightAbove(BinNodePosi(T) x);//更新此节点父节点的高度

public:
    BinTree() : _size(0); _root(nullptr){}
    ~BinTree() {if (0<_size) remove (_root);}
    int size() const {return _size;}
    bool empty() const {return !root;}
    BinNodePosi(T) root() const {return root;}
    BinNodePosi(T) insertAsRoot() { T const & e;}
    //插入左右子节点
    BinNodePosi(T) insertAsLC(BinNodePosi(T) x,T const &e);
    BinNodePosi(T) insertAsRC(BinNodePosi(T) x,T const &e);
    //插入左右子树
    BinNodePosi(T) attachAsLC(BinNodePosi(T) x,BinTree<T> * &T);
    BinNodePosi(T) attachAsRC(BinNodePosi(T) x,BinTree<T> * &T);

    int remove(BinNodePosi(T) x );//删除该节点为根的子树,返回该子树原先规模,也用于析构根节点->删除整个树
    BinTree<T>* secede (BinNodePosi(T) x);//删去x作为根节点的子树并且新构造一个树
    
};