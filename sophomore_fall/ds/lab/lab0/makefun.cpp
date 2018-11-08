//mkfun
#include<iostream>
#include<stdlib.h>  //标准库头文件包含函数exit()
using namespace std;
struct Node     //建立结构体
{
    float coef;  //项式系数
    int exp;     //项式指数
};
typedef Node polynomial;//重命名
struct LNode
{
    polynomial data;//链表类型
    LNode *next;
};
typedef LNode* Link;
void Create(Link &L, int n);  //创建一个n项多项式函数
void Print(Link L);          //输出链表函数
void Add(Link &pc, Link pa, Link pb); //多项式相加函数
void Substract(Link &pc, Link pa, Link pb);//多项式相减函数
void Copy(Link &pc, Link pa);//把一个链表的内容复制给另一个链表创建表函数
int Judge(Link pa, Link e);//判断指数是否与多项式中已存在的某项相同函数
void Destroy(Link &L)//销毁链表函数
{
    Link p;
    p = L->next;
    while (p)
    {
        L->next = p->next;
        delete p;
        p = L->next;
    }
    delete L;
    L = NULL;
}
void Create(Link &L, int n)//创建含有n个链表类型结点的项，即创建一个n项多项式
{
    if (L != NULL)
    {
        Destroy(L);
    }
    Link p, newp;//定义两个链表
    L = new LNode;
    L->next = NULL;
    (L->data).exp = -1;//创建头结点
    p = L;
    for (int i = 1; i <= n; i++)
    {
        newp = new LNode;//申请新节点
        cout << "请输入第" << i << "项的系数和指数:" << endl;
        cout << "系数:";
        cin >> (newp->data).coef;
        cout << "指数:";
        cin >> (newp->data).exp;
        if (newp->data.exp<0) //判断指数是否为0，如果为0，销毁链表，从新输入
        {
            cout << "您输入有误，指数不允许为负值!" << endl;
            delete newp;
            i--;
            continue;
        }
        newp->next = NULL;
        p = L;
        if (newp->data.coef == 0)//判断系数是否为0
        {
            cout << "系数为零，重新输入!" << endl;
            delete newp;
            i--;
            continue;
        }
        while ((p->next != NULL) && ((p->next->data).exp<(newp->data).exp)) //利用while循环使p指向指数最小的项
        {
            p = p->next;
        }
        if (!Judge(L, newp))//判断指数是否与多项式中已存在的某项相同
        {
            newp->next = p->next;
            p->next = newp;
        }
        else
        {
            cout << "输入的该项指数与多项式中已存在的某项相同,请重新创建一个正确的多项式" << endl;
            delete newp;
            Destroy(L);
            Create(L, n); //创建多项式没有成功，递归调用重新创建
            break;
        }
    }
}
int Judge(Link L, Link e)//判断指数是否与多项式中已存在的某项相同
{
    Link p;
    p = L->next;
    while (p != NULL && (e->data.exp != p->data.exp))
        p = p->next;
    if (p == NULL)return 0;
    else return 1;
}
void Print(Link L)//输出链表
{
    Link p;
    if (L == NULL || L->next == NULL)   //判断多项式是否为空
        cout << "该一元多项式为空！" << endl;
    else
    {
        p = L->next;
        if ((p->data).coef>0)  //项的系数大于的种情况
        {
            if ((p->data).exp == 0)  //输出指数为0项的系数
                cout << (p->data).coef;
            else if ((p->data).coef == 1 && (p->data).exp == 1)
                cout << "x";
            else if ((p->data).coef == 1 && (p->data).exp != 1)
                cout << "x^" << (p->data).exp;
            else if ((p->data).exp == 1 && (p->data).coef != 1)
                cout << (p->data).coef << "x";
            else cout << (p->data).coef << "x^" << (p->data).exp;
        }
        //项的系数小于的种情况
        if ((p->data).coef<0)
        {
            if ((p->data).exp == 0)
                cout << (p->data).coef;
            else if (p->data.coef == -1 && p->data.exp == 1)
                cout << "-x";
            else if (p->data.coef == -1 && p->data.exp != 1)
                cout << "-x^" << p->data.exp;
            else if (p->data.exp == 1)
                cout << p->data.coef << "x";
            else cout << (p->data).coef << "x^" << (p->data).exp;
        }
        p = p->next;
        while (p != NULL)
        {
            if ((p->data).coef>0)
            {
                if ((p->data).exp == 0)
                    cout << " " << (p->data).coef;
                else if ((p->data).exp == 1 && (p->data).coef != 1)
                    cout << " " << (p->data).coef << "x";
                else if ((p->data).exp == 1 && (p->data).coef == 1)
                    cout << " " << "x";
                else if ((p->data).coef == 1 && (p->data).exp != 1)
                    cout << " " << "x^" << (p->data).exp;
                else cout << " " << (p->data).coef << "x^" << (p->data).exp;
            }
            if ((p->data).coef<0)
            {
                if ((p->data).exp == 0)
                    cout << (p->data).coef;
                else if (p->data.coef == -1 && p->data.exp == 1)
                    cout << "-x";
                else if (p->data.coef == -1 && p->data.exp != 1)
                    cout << "-x^" << p->data.exp;
                else if (p->data.exp == 1)
                    cout << p->data.coef << "x";
                else cout << (p->data).coef << "x^" << (p->data).exp;
            }

            p = p->next;
        }
    }
    cout << endl;
}
void Copy(Link &pc, Link pa)//把一个链表的内容复制给另一个链表
{
    Link p, q, r;
    pc = new LNode;
    pc->next = NULL;
    r = pc;
    p = pa;
    while (p->next != NULL)
    {
        q = new LNode;
        q->data.coef = p->next->data.coef;
        q->data.exp = p->next->data.exp;
        r->next = q;
        q->next = NULL;
        r = q;
        p = p->next;
    }
}
void Add(Link &pc, Link pa, Link pb)//两个一元多项式相加
{
    Link p1, p2, p, pd;
    Copy(p1, pa);
    Copy(p2, pb);
    pc = new LNode;
    pc->next = NULL;
    p = pc;
    p1 = p1->next;
    p2 = p2->next;
    while (p1 != NULL&&p2 != NULL)
    {
        if (p1->data.exp<p2->data.exp)//比较指数大小，把两个一元多项式的项按指数递增序列排列
        {
            p->next = p1;
            p = p->next;
            p1 = p1->next;
        }
        else if (p1->data.exp>p2->data.exp)
        {
            p->next = p2;
            p = p->next;
            p2 = p2->next;
        }
        else //当指数相同时两系数相加
        {
            p1->data.coef = p1->data.coef+ p2->data.coef;
            if (p1->data.coef != 0)//找出系数为零的项并删除
            {
                p->next = p1;
                p = p->next;
                p1 = p1->next;
                p2 = p2->next;
            }
            else
            {
                pd = p1;
                p1 = p1->next;
                p2 = p2->next;
                delete pd;
            }

        }
    }
    if (p1 != NULL)
    {
        p->next = p1;
    }
    if (p2 != NULL)
    {
        p->next = p2;
    }
}
void Substract(Link &pc, Link pa, Link pb)//两个多项式相减
{
    Link p, pt;
    Copy(pt, pb);//把pb复制在pt
    p = pt;
    while (p != NULL)
    {
        (p->data).coef = (-(p->data).coef);//将系数取反
        p = p->next;
    }
    Add(pc, pa, pt);//调用加法函数进行减法
    Destroy(pt);
}
void Multiply(Link &pc, Link pa, Link pb)//将两个一元多项式相乘函数
{
    Link p1, p2, p, pd, newp, t;
    pc = new LNode;
    pc->next = NULL;
    p1 = pa->next;
    p2 = pb->next;
    while (p1 != NULL)
    {
        pd = new LNode;
        pd->next = NULL;
        p = new LNode;
        p->next = NULL;
        t = p;
        while (p2)
        {
            newp = new LNode;
            newp->next = NULL;
            newp->data.coef = p1->data.coef*p2->data.coef;
            newp->data.exp = p1->data.exp *p2->data.exp;
            t->next = newp;
            t = t->next;
            p2 = p2->next;
        }
        Add(pd, pc, p);
        Copy(pc, pd);
        p1 = p1->next;
        p2 = pb->next;
        Destroy(p);
        Destroy(pd);
    }
}
void division(Link &pc, Link pa, Link pb)//将两个一元多项式相除函数
{
    Link p1, p2, p, pd, newp, t;
    pc = new LNode;
    pc->next = NULL;
    p1 = pa->next;
    p2 = pb->next;
    while (p1 != NULL)
    {
        pd = new LNode;
        pd->next = NULL;
        p = new LNode;
        p->next = NULL;
        t = p;
        while (p2)
        {
            newp = new LNode;
            newp->next = NULL;
            newp->data.coef = p1->data.coef / p2->data.coef;
            newp->data.exp = p1->data.exp - p2->data.exp;
            t->next = newp;
            t = t->next;
            p2 = p2->next;
        }
        Add(pd, pc, p);
        Copy(pc, pd);
        p1 = p1->next;
        p2 = pb->next;
        Destroy(p);
        Destroy(pd);
    }
}
void Menu()//菜单函数
{
    cout << "" << endl;
    cout << endl;
    cout << "\t\t\t\t\t一元多项式的加减乘除运算" << endl;
    cout << "\t\t\t\t\t\t\t\t   " << endl;
    cout << "\t\t  1 创建要运算的两个一元多项式\t\t   " << endl;
    cout << "\t\t  2 将两个一元多项式相加\t\t\t   " << endl;
    cout << "\t\t  3 将两个一元多项式相减\t\t\t   " << endl;
    cout << "\t\t  4 将两个一元多项式相乘\t\t\t   " << endl;
    cout << "\t\t  5 将两个一元多项式相除\t\t\t   " << endl;
    cout << "\t\t  0 退出         " << endl;
    cout << "\t\t\t\t\t\t\t\t   " << endl;
    cout << endl;
    cout << "\t\t  请选择:";
}


int main()
{
    int n;
    Link L, La = NULL, Lb = NULL;//La,Lb分别为创建的两个多项式
    int choose;
    while (1)
    {
        Menu(); //调用菜单函数
        cin >> choose;
        switch (choose)
        {
        case 1:
            cout << "请输入你要运算的第一个一元多项式的项数:" << endl;
            cin >> n;
            Create(La, n);
            cout << "请输入你要运算的第二个一元多项式的项数:" << endl;
            cin >> n;
            Create(Lb, n);
            break;
        case 2:
            if (La == NULL || Lb == NULL)
            {
                cout << "您的多项式创建有误，请重新选择……" << endl;
                break;
            }
            Add(L, La, Lb);
            cout << "" << endl;

            cout << "待相加的两个一元多项式为：" << endl;
            cout << "" << endl;
            cout << "A的多项式为：";
            Print(La);
            cout << "" << endl;
            cout << "B的多项式为：";
            Print(Lb);
            cout << "" << endl;
            cout << "相加后的结果为：";
            Print(L);
            cout << "" << endl;
            Destroy(L);
            break;
        case 3:
            Substract(L, La, Lb);
            cout << "相减的两个一元多项式为：" << endl;
            cout << "" << endl;
            cout << "A的多项式为：";
            Print(La);
            cout << "" << endl;
            cout << "B的多项式为：";
            Print(Lb);
            cout << "" << endl;
            cout << "相减后的结果为：";
            Print(L);
            cout << "" << endl;
            Destroy(L);
            break;
        case 4:
            if (La == NULL || Lb == NULL)
            {
                cout << "您的多项式创建有误，请重新选择……" << endl;
                break;
            }
            Multiply(L, La, Lb);
            cout << "相乘的两个一元多项式为：" << endl;
            cout << "" << endl;
            cout << "A的多项式为：";
            Print(La);
            cout << "" << endl;
            cout << "B的多项式为：";
            Print(Lb);
            cout << "" << endl;
            cout << "相乘后的结果为：";

            Print(L);
            Destroy(L);
            cout << "" << endl;
            break;
        case 5:
            if (La == NULL || Lb == NULL)
            {
                cout << "您的多项式创建有误，请重新选择……" << endl;
                break;
            }
            division(L, La, Lb);
            cout << "相除的两个一元多项式为：" << endl;
            cout << "" << endl;
            cout << "A的多项式为：";
            Print(La);
            cout << "" << endl;
            cout << "B的多项式为：";
            Print(Lb);
            cout << "" << endl;
            cout << "相除后的结果为：";

            Print(L);
            Destroy(L);
            cout << "" << endl;
            break;
        case 0:exit(1);
            Print(L);
            cout << "" << endl;
            break;
        }
    }
}