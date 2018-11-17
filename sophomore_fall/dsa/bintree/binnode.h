// 二叉树节点实现
#define BinNodePosi(T) BinNode<T>* 
#define stature(p)  ((p)?(p)->height:-1) //节点p的深度,规定空树为-1
typedef enum{ RB_RED,RB_BLACK } RBColor; //红黑树节点颜色

//宏定义方法来实现定位节点等操作
//多加括号!!!
#define IsRoot(x) (!((x).parent))
#define IsLChild(x) (!IsRoot(x) && (&(x)==(x).parent->lc ))
#define IsRChild(x) (!IsRoot(x) && (&(x)==(x).parent->rc ))
#define HasParent(x) (!IsRoot(x))
#define HasLChild(x) ((x).lc)
#define HasRChild(x) ((x).rc)
#define HasChild(x) (HasLChild(x) || HasRChild(x))
#define HasBothChild(x) (HasLChild(x) && HasRChild(x))
#define IsLeaf(x) (!HasChild(x))

template <typename T> struct BinNode{
//节点的内容可以直接公开
    T data;
    BinNodePosi(T) parent;
    BinNodePosi(T) lc;
    BinNodePosi(T) rc;
    //双亲,左右子节点
    int height;
    int npl;//Null path length 左式堆
    RBColor color;

//构造函数
    BinNode()://默认 不接受参数版本的构造函数,均初始化为空
        parent (nullptr),lc(nullptr),rc(nullptr),height(0),npl(1),color(RB_RED){}
    BinNode(T e, BinNodePosi(T) p = nullptr,BinNodePosi(T) lc = nullptr,BinNodePosi(T) rc= nullptr, int h = 0, int l = 1,RBColor c = RB_RED):
        //构造初始化
        data(e),parent(p),lc(lc),rc(rc),height(h),npl(l),color(c){}    
    //接受参数的构造函数,同时指定初始化

//操作接口
    /*
        关于插入子节点应该是定义为bintree的接口还是binnode的接口要看这个方法直接作用于谁
        很显然是作用于节点的时候比较方便
        但是我觉得遍历方法还是定义在树上比较好一点???
        2018.11.14 21:23
    */
    int size();//统计其后代总数;
    BinNodePosi(T) insertAsLC(T const & );//接受节点data来构造左右子节点
    BinNodePosi(T) insertAsRC(T const & );
    BinNodePosi(T) succ();
    template <typename VST> void travLevel (VST &);//层次遍历
    template <typename VST> void travPre (VST &);//先序遍历
    template <typename VST> void travPost (VST &);//后序遍历
    template <typename VST> void travIn (VST &);//中序遍历
//比较器 判等器
//根据需要来实现
    bool operator< (BinNode const & bn){return data<bn,data;}
    bool operator== (BinNode const & bn){return data == bn.data;}
};

//部分实现
template <typename T> BinNodePosi(T) BinNode<T> :: insertAsLC(T const &e){
    return lc = new BinNode(e,this);
} 

template <typename T> BinNodePosi(T) BinNode<T> :: insertAsRC(T const &e){
    return rc = new BinNode(e,this);
}