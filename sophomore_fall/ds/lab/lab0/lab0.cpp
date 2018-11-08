#include<iostream>
#include<string>
#include<cmath>

const int MAXSIZE = 20;
static int numoflist = 0;
using namespace std;


struct node
{   float coef;             //序数
    int expn;              //指数
    node * next;    //指向下一个结点的指针
};
//存放
typedef node * List;//list（链表）即为指向节点的指针
node **p = new node *[MAXSIZE];
void simplify(List &l);
void clear(List &l){
    List p;
    p = l->next;
    while (p){
        p->coef=0;
        p->expn=0;
        p=p->next;
    }
    simplify(l);
  
}
void destroy(List &L)//销毁链表函数
{
    List p;
    p = L->next;
    while (p)
    {
        L->next = p->next;//在list中略过p节点
        delete p;
        p = L->next;//下一个节点
    }
    delete L;
    L = nullptr;
}
int judge(List L, List e)//判断指数是否与多项式中已存在的某项相同
{
    List p;
    p = L->next;
    while (p!=nullptr && (e->expn != p->expn))
        p = p->next;
    if (p == nullptr)return 0;
    else return 1;
}
void simplify(List &l){
    //化简重复指数的项
    List p=l->next;
    List q=p->next;
    while(p&&q){
        if(p->expn==q->expn){
            p->coef+=q->coef;
            p->next=q->next;
            List d=q;
            q=q->next;
            delete d;
        }
        else{
            p=p->next;
            q=q->next;
        }
    }

}
void creat (List & L,int n)
{
    List p, newp;//定义两个链表
    L = new node;
    L->next = nullptr;
    L->expn = n;//创建头结点
    p = L;
    for (int i = 1; i <= n; i++)
    {
        newp = new node;//申请新节点
        cout << "请输入第" << i << "项的系数和指数:" << endl;
        cout << "系数:";
        cin >> newp->coef;
        cout << "指数:";
        cin >> newp->expn;
        newp->next = nullptr;
        p = L;
        while ((p->next != nullptr) && (p->next->expn<=newp->expn)) 
        //利用while循环使p指向指数最小的项,每次均保证为上升序列
            p = p->next;
        newp->next = p->next;
        p->next = newp;
    }
    simplify(L);
}

void print(List L)//输出链表
{
    List p;
    if (L == nullptr || L->next == nullptr)   //判断多项式是否为空
        cout << "该一元多项式为空！" << endl;
    else
    {
        p = L->next;
        if (p->coef>0)  //项的系数大于的种情况
        {
            if (p->expn == 0)  //输出指数为0项的系数
                cout << p->coef;
            else if (p->coef == 1 && p->expn == 1)
                cout << "x";
            else if (p->coef == 1 && p->expn != 1)
                cout << "x^" << p->expn;
            else if (p->expn == 1 && p->coef != 1)
                cout << p->coef << "x";
            else cout << p->coef << "x^" << p->expn;
        }
        //项的系数小于的种情况
        if (p->coef<0)
        {
            if (p->expn == 0)
                cout << p->coef;
            else if (p->coef == -1 && p->expn == 1)
                cout << "-x";
            else if (p->coef == -1 && p->expn != 1)
                cout << "-x^" << p->expn;
            else if (p->expn == 1)
                cout << p->coef << "x";
            else cout << p->coef << "x^" << p->expn;
        }
        p = p->next;
        while (p != nullptr)
        {
            if (p->coef>0)
            {
                if (p->expn == 0)
                    cout << " " << p->coef;
                else if (p->expn == 1 && p->coef != 1)
                    cout << " " << p->coef << "x";
                else if (p->expn == 1 && p->coef == 1)
                    cout << " " << "x";
                else if (p->coef == 1 && p->expn != 1)
                    cout << " " << "x^" << p->expn;
                else cout << " " << p->coef << "x^" << p->expn;
            }
            if (p->coef<0)
            {
                if (p->expn == 0)
                    cout << p->coef;
                else if (p->coef == -1 && p->expn == 1)
                    cout << "-x";
                else if (p->coef == -1 && p->expn != 1)
                    cout << "-x^" << p->expn;
                else if (p->expn == 1)
                    cout << p->coef << "x";
                else cout << p->coef << "x^" << p->expn;
            }

            p = p->next;
        }
    }
    cout << endl;
}
void value (List & l,float x){
    List p = l->next;
    if(!x)
        while(p){
            if(p->expn<0){
                cout<<"error :0 be divided"<<endl;
                return ;
            }
        p=p->next;
        }
    float sum=0;
    while(p){
        sum+=p->coef*pow(x,p->expn);
        p=p->next;
    }
    cout <<"x="<<x<<"时，多项式值为"<<sum<<endl;
}
void copy(List &pc, List pa)//把一个链表的内容复制给另一个链表
{
    List p, q, r;
    pc = new node;
    pc->next = nullptr;
    r = pc;
    p = pa;
    while (p->next != nullptr)
    {
        q = new node;
        q->coef = p->next->coef;
        q->expn = p->next->expn;
        r->next = q;
        q->next = nullptr;
        r = q;
        p = p->next;
    }
}
void add (List &pc,List pa,List pb){
    List p1, p2, p, pd;
    copy(p1, pa);
    copy(p2, pb);
    pc = new node;
    pc->next = nullptr;
    p = pc;
    p1 = p1->next;
    p2 = p2->next;
    while (p1 != nullptr&&p2 != nullptr)
    {
        if (p1->expn<p2->expn)//比较指数大小，把两个一元多项式的项按指数递增序列排列
        {
            p->next = p1;
            p = p->next;
            p1 = p1->next;
        }
        else if (p1->expn>p2->expn)
        {
            p->next = p2;
            p = p->next;
            p2 = p2->next;
        }
        else //当指数相同时两系数相加
        {
            p1->coef = p1->coef+ p2->coef;
            if (p1->coef != 0)//找出系数为零的项并删除
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
    if (p1 != nullptr)
    {
        p->next = p1;
    }
    if (p2 != nullptr)
    {
        p->next = p2;
    }
}
void sub(List &pc, List pa, List pb)//两个多项式相减
{
    List p, pt;
    copy(pt, pb);//把pb复制在pt
    p = pt;
    while (p != nullptr)
    {
        p->coef = (-p->coef);//将系数取反
        p = p->next;
    }
    add(pc, pa, pt);//调用加法函数进行减法
    destroy(pt);
}
void mul(List &pc, List pa, List pb)//将两个一元多项式相乘函数
{
    List p1, p2, p, pd, newp, t;
    pc = new node;
    pc->next = nullptr;
    p1 = pa->next;
    p2 = pb->next;
    while (p1)
    {
        pd = new node;
        pd->next = nullptr;
        p = new node;
        p->next = nullptr;
        t = p;
        while (p2)
        {
            newp = new node;
            newp->next = nullptr;
            newp->coef = p1->coef*p2->coef;
            newp->expn = p1->expn+p2->expn;
            t->next = newp;
            t = t->next;
            p2 = p2->next;
        }
        add(pd, pc, p);
        copy(pc, pd);
        p1 = p1->next;
        p2 = pb->next;
        destroy(p);
        destroy(pd);
    }
}
void div(List &pc, List pa, List pb)//将两个一元多项式相除函数
{
    List p1, p2, p, pd, newp, t;
    pc = new node;
    pc->next = nullptr;
    p1 = pa->next;
    p2 = pb->next;
    while (p1 != nullptr)
    {
        pd = new node;
        pd->next = nullptr;
        p = new node;
        p->next = nullptr;
        t = p;
        while (p2)
        {
            newp = new node;
            newp->next = nullptr;
            newp->coef = p1->coef / p2->coef;
            newp->expn = p1->expn - p2->expn;
            t->next = newp;
            t = t->next;
            p2 = p2->next;
        }
        add(pd, pc, p);
        copy(pc, pd);
        p1 = p1->next;
        p2 = pb->next;
        destroy(p);
        destroy(pd);
    }
}
//void clear (List &l){}
void diff (List l,int n){
    copy(p[numoflist],l);
    List q = p[numoflist]->next;
    while(q){
        if(q->expn<0){
            for(int i = q->expn ; i > q->expn-n;i--)
                q->coef *= i; 
            q->expn -= n;
        }
        else if((q->expn-n)>=0){
            for(int i = q->expn ; i > q->expn-n;i--)
                q->coef *= i; 
            q->expn -= n;
        }
        else{
            q->expn=0;
            q->coef=0;
        }
        q=q->next;
    }
}
void integ (List l, int a,int b){
    List p = l;
    int flag;
    double sum=0;
    double dx=(b-a)/1000.0;
    while(p=p->next){
        if(p->expn<0){
            flag=1;
            if(a*b<0){//若中间过0
                cout<<"error :0 be divided"<<endl;
                return ;
            }
        }
    }
    p=l;
    while(p=p->next){
        double temp = 0;
        for(double i=a;i<=b;i+=dx)
            temp += pow(i,p->expn)*dx;
        temp*=p->coef;
        sum+=temp;
    }
    cout<<"不定积分的值为"<<sum<<endl;
}
void integ_c(List l){
    copy(p[numoflist],l);
    List q = p[numoflist]->next;
    while(q){
        if(q->expn!=-1){
            q->expn++;
            q->coef /= q->expn;
        }
        else 
            q->expn=30;
        q=q->next;
    }

}
void change(List &l,float c,int e,float c_target,int e_target){
    List p=l;
    while(p=p->next){
        if(abs(p->coef-c)<0.1 && p->expn==e){
            p->coef=c_target;
            p->expn=e_target;
        return ;
        }
    }
    cout<<"无对应项目"<<endl;
}
void print(List L);
void show(int n){
    if(n)//若n不为0
        print(p[n-1]);
    else 
    for(int i=0;i<numoflist&&p[i];i++){
        cout<<"第"<<i+1<<"个多项式:"<<endl;
        print(p[i]);
    }
}
void menu (){
    cout << "" << endl;
    cout << endl;
    cout << "现有的一元多项式个数："<<numoflist<<endl;
    //cout << " 0 输出所有多项式\t\t   " << endl;
    cout << " 1 创建一元多项式\t\t   " << endl;
    cout << " 2 将两个一元多项式相加\t\t\t   " << endl;
    cout << " 3 将两个一元多项式相减\t\t\t   " << endl;
    cout << " 4 将两个一元多项式相乘\t\t\t   " << endl;
    cout << " 5 将两个一元多项式相除\t\t\t   " << endl;
    cout << " 6 求多项式的值       \t\t\t"     <<endl;
    cout << " 7 求多项式N阶微分    \t\t\t   "  << endl;
    cout << " 8 求多项式不定积分   \t\t\t"     << endl;
    cout << " 9 求多项式定积分     \t\t\t"     <<endl;
    cout << " 10 修改"<<endl;
    cout << " 11 清零"<<endl;
    cout << " 12 查看"<<endl;
    cout << " 0 退出         " << endl;
    cout << "\t\t\t\t\t\t\t\t   " << endl;
    cout << endl;
    cout << "\t\t  请选择:";
}
int main (){
    //node (*p)[MAXSIZE];node **p = new node *[MAXSIZE];
    int m,n,i;
    float x,y;
    int choose;
    while(1){
        menu();
        cin>>choose;
        switch(choose){
            case 1:
                cout << "请输入你要运算的第一个一元多项式的项数:" << endl;
                cin >> n;
                creat(p[numoflist],n);
                print(p[numoflist]);
                numoflist++;
                break;
            case 2:
                cout << "求哪个两个的和？？"<<endl;
                cin >>m >>n;
                add(p[numoflist],p[m-1],p[n-1]);
                print(p[numoflist]);
                numoflist++;
                break;
            case 3:
                cout << "求哪个两个的差？？"<<endl;
                cin >>m >>n;
                sub(p[numoflist],p[m-1],p[n-1]);
                print(p[numoflist]);
                numoflist++;
                break;
            case 4:
                cout << "求哪个两个的积？？"<<endl;
                cin >>m >>n;
                mul(p[numoflist],p[m-1],p[n-1]);
                print(p[numoflist]);
                numoflist++;
                break;
            case 5:
                cout << "求哪个两个的商？？"<<endl;
                cin >>m >>n;
                div(p[numoflist],p[m-1],p[n-1]);
                print(p[numoflist]);
                numoflist++;
                break;
            case 6:
                cout << "求哪个的值？x多少？"<<endl;
                cin >> n;
                cin >> x;
                value(p[n-1],x);
                break;
            case 7:
                cout<<"求谁的微分,几阶微分？"<<endl;
                cin>>m;
                cin>>n;
                diff(p[m-1],n);
                print(p[numoflist]);
                numoflist++;
                break;
            case 8:
                cout<<"求谁的定积分，上下限为多少"<<endl;
                cin>>m;
                cout<<"上下限："<<endl;
                cin>>x;
                cin>>y;
                integ(p[m-1],x,y);
                break;
            case 9:
                cout<<"求谁的不定积分"<<endl;
                cin>>m;
                integ_c(p[m-1]);
                cout<<"C+";
                print(p[numoflist]);
                numoflist++;
                break;
            case 10:
                cout<<"输入要修改的多项式序号"<<endl;
                cin>>i;
                show(i);
                cout<<"输入要修改项的系数和指数"<<endl;
                cin>>x;
                cin>>n;
                cout<<"输入修改为"<<endl;
                cin>>y;
                cin>>m;
                change(p[i-1],x,n,y,m);
                show(i);
                break;
            case 11:
                cout<<"清零哪一个"<<endl;
                cin>>m;
                clear(p[m-1]);
                print(p[m-1]);
                break;
            case 12:
                cout<<"选择要查看的多项式(input 0 for all)"<<endl;
                cin>>m;
                show(m);
                break;
            case 0:
                exit(0);
        }
    }
}
