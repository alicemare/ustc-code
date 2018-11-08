#include<iostream>
#include<fstream> 
#include<string> 
using namespace std;

typedef struct BTree
{
	int val;
	struct BTree *left,*right;	
}BTree;

class Tree
{
	public:
	BTree *create_node(int level,string pos);
	void PreOrder(BTree *t);  //先序遍历 
	void InOrder(BTree *t);  //中序遍历 
	void PostOrder(BTree *t);  //后序遍历 
	
	BTree *root;	
};

/*用先序遍历的方法递归构造一课二叉树*/ 
BTree* Tree::create_node(int level,string pos)
{
	int data;
	BTree *node = new BTree;
	
	cout<<"please enter data:level "<<level<<" "<<pos<<endl;
	cin>>data;

	//若输入的数据为0，则把该结点的子结点置为空 
	if(data == 0)
	{
		return NULL;
	}

	node->val= data;

	/*create_node（）的	参数用于在给二叉树赋值时表明
	现在赋值的是哪个结点*/ 
	node->left = create_node(level+1,"left");
	node->right= create_node(level+1,"right");			
	return node;
}

void Tree::PreOrder(BTree *t)
{
	if(t)
	{
		cout<<t->val<<endl;;
		PreOrder(t->left);
		PreOrder(t->right);				
	}
} 

void Tree::InOrder(BTree *t)
{
	if(t)
	{
		InOrder(t->left);
		cout<<t->val<<endl;;
		InOrder(t->right);
	}
}

void Tree::PostOrder(BTree *t)
{
	if(t)
	{
		PostOrder(t->left);
		PostOrder(t->right);
		cout<<t->val<<endl;	
	}
}

int main()
{
	Tree tree;
	tree.root = tree.create_node(1,"root");
	cout<<"Pre"<<endl;
	tree.PreOrder(tree.root);
	
	cout<<"In"<<endl;
	tree.InOrder(tree.root);
	
	cout<<"Post"<<endl;
	tree.PreOrder(tree.root);	
	
	return 0;
}