#include <iostream>
#include <cstdio>
#include <cstring>
#include <algorithm>
using namespace std;
class Term
{
public:
	Term(int c, int e);
	Term(int c, int e, Term *nxt);
	Term* InsertAfter(int c, int e); // 在this指针指示的结点后插入新节点
private:
	int coef, exp; // coef * x^exp
	Term* link;
	friend ostream & operator << (ostream &, const Term &);
	friend class Polynominal;
	/* data */
};
Term::Term(int c, int e) : coef(c), exp(e)
{
	link = 0;
}
Term::Term(int c, int e, Term *nxt) : coef(c), exp(e)
{
	link = nxt;
}
Term *Term::InsertAfter(int c, int e) // 为新项申请结点的存储单元，并用Term函数将c, e, this -> link 的值填入新节点的相应域
{
	link = new Term(c, e, link);
	return link;
}
ostream & operator << (ostream& out, const Term& val)
{
	if(val.coef == 0) return out;
	if(val.coef != 1) out << val.coef;
	switch(val.exp) {
		case 0: break;
		case 1: out << "x"; break;
		default: out << "x^" << val.exp; break;
	}
	return out;
}
class Polynominal
{
public:
	Polynominal();
	~Polynominal();
	void AddTerms(istream& in);
	void Output(ostream& out) const;
	void PolyAdd(Polynominal& r);
	void PolyMul(Polynominal& r);
private:
	Term* theList;
	friend ostream & operator << (ostream &, const Polynominal &);
	friend istream & operator >> (istream &, Polynominal &);
	friend Polynominal & operator + (Polynominal &, Polynominal &);
	friend Polynominal & operator * (Polynominal &, Polynominal &);
	/* data */
};
Polynominal::Polynominal()
{
	theList = new Term(0, -1); // 表头结点
	theList -> link = NULL; // 尾结点为空
}
Polynominal::~Polynominal()
{
	Term *p = theList -> link;
	while(p != NULL) {
		theList -> link = p -> link;
		delete p;
		p = theList -> link;
	}
	delete theList;
}
void Polynominal::AddTerms(istream& in) // 按降幂输入各项，构造单循环链表
{
	Term* q = theList;
	int c, e;
	while(true) {
		cout << "Input a term(coef, exp):" << endl << endl;
		cin >> c >> e;
		q = q -> InsertAfter(c, e); // 将c，e插入表尾结点q之后
		if(e < 0) break; // 当输入指数小于0时，构造结束
	}
}
void Polynominal::Output(ostream& out) const
{
	int first = 1;
	Term *p = theList -> link;
	for( ; p != NULL && p -> exp >= 0; p = p -> link) {
		if(!first && (p -> coef > 0)) out << "+"; // 在非第一项的正系数前输出+号
		first = 0;
		out << *p; // 调用Term类上重载的"<<"操作
	}
	cout << endl;
}
void Polynominal::PolyAdd(Polynominal& r)
{
	Term *q, *q1 = theList, *p; // q1指向表头结点
	p = r.theList -> link; // p指向第一个要处理的结点
	q = q1 -> link; // q1是q的前驱，p和q就指向两个当前进行比较的项
	while(p != NULL && p -> exp >= 0) { // 对r的单链表遍历，直到全部结点都处理完
		while(p -> exp < q -> exp) { // 跳过q -> exp大的项
			q1 = q;
			q = q -> link;
		}
		if(p -> exp == q -> exp) { // 指数相等时，系数相加
			q -> coef = q -> coef + p -> coef;
			if(q -> coef == 0) { // 若相加后系数为0，则删除q
				q1 -> link = q -> link;
				delete (q);
				q = q1 -> link; // 重置q指针
			}
			else { // 若相加后系数不为0，则移动q1和q
				q1 = q;
				q = q -> link;
			}
		}
		else q1 = q1 -> InsertAfter(p -> coef, p -> exp); // 若p -> exp > q -> exp则以p的系数和指数生成新结点，插入q1后
		p = p -> link;
	}
}
void Polynominal::PolyMul(Polynominal& r)
{
	Polynominal result; // 存储结果
	Term *n = result.theList; // n指向result的头结点
	n = n -> InsertAfter(0, 0); // 将0, 0插入result的头结点之后
	Term *p = r.theList -> link; // p指向第一个要处理的结点
	while(p -> exp >= 0) { // 对r的单链表遍历，直到全部结点都处理完
		Polynominal tmp; // tmp存储当前结果
		Term *m = tmp.theList; // m指向tmp头结点
		Term *q = theList -> link; // q指向表头结点的后继结点
		while(q -> exp >= 0) { // 遍历当前单链表
			m = m -> InsertAfter((p -> coef) * (q -> coef), (p -> exp) + (q -> exp)); // 生成新结点插入m后
			q = q -> link;
		}
		result.PolyAdd(tmp); // 当前结果加到result上
		p = p -> link;
	}
	Term *q = theList -> link;
	while(q != NULL) { // 清空原数据
		theList -> link = q -> link;
		delete q;
		q = theList -> link;
	}
	q = theList;
	q = q -> InsertAfter(0, 0);
	PolyAdd(result); // result加到当前对象上
}
ostream & operator << (ostream &out, Polynominal &x)
{
	x.Output(out);
	return out;
}
istream & operator >> (istream &in, Polynominal &x)
{
	x.AddTerms(in);
	return in;
}
Polynominal & operator + (Polynominal &a, Polynominal &b)
{
	a.PolyAdd(b);
	return a;
}
Polynominal & operator * (Polynominal &a, Polynominal &b)
{
	a.PolyMul(b);
	return a;
}
int main(int argc, char const *argv[])
{
	cout << "***********" << endl;
	cout << "  按1进行多项式加法" << endl;
	cout << "  按2进行多项式乘法" << endl;
	cout << "     按0退出程序" << endl;
	cout << "***********" << endl;
	int num;
	while(cin >> num && num) {
		cout << "请输入多项式p：" << endl;
		Polynominal p, q;
		cin >> p;
		cout << p << endl;
		cout << "请输入多项式q：" << endl;
		cin >> q;
		cout << q << endl;
		if(num == 1) {
			Polynominal ans = p + q;
			cout << "p + q = " << ans << endl;
		}
		else {
			Polynominal ans = p * q;
			cout << "p * q = " << ans << endl;
		}
		cout << "***********" << endl;
		cout << "  按1进行多项式加法" << endl;
		cout << "  按2进行多项式乘法" << endl;
		cout << "     按0退出程序" << endl;
		cout << "***********" << endl << endl;
	}
	cout << endl << "感谢检查" << endl;
	return 0;
}