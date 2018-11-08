#include "ploynom.h"
ploynom::ploynom(){this->head = nullptr;}
ploynom::~ploynom(){
    node *p = this->head;
    while(head)
    {
        p = head;
        head = head->next;
        delete (p);
    }
}

bool ploynom::isEmpty(){return this->head == nullptr;}

void ploynom::creatPloynom(string str){
    vector<string> tokens;
    string temp = "";
    for(auto ch : str)
    {
        if(ch == '+'){
            tokens.push_back(temp);
            temp = "";//清空字符串
       }
       else
           temp.push_back(ch);
    }
    tokens.push_back(temp);//last one token
    for(auto item:tokens)
        this->push_back(item);
}

void ploynom::clearPloynom(){
    node * p = head;
    while (head) {
        p = head;
        head = head->next;
        delete p;
    }
}

node * ploynom::creatNode(string token){
    node* p = new node;
    //string token = "12.2*x^10";
    stringstream str;
    string::const_iterator v=token.cbegin();
    string s_coef="";
    string s_exp="";
    //截取coef系数部分
    while(*v!= 'x'){s_coef+=*v;v++;}
    str.str(s_coef);
    str>>p->coef;
    //str.str("");
    str.clear();
    //截取指数部分
    v++;//略去^符号
    while(v++!=token.cend())
        s_exp+=*v;
    str.str(s_exp);
    str>>p->expn;
}

void ploynom::push_back(string token){
    node *s = creatNode(token);
    node *p = head;
    while(p->next != nullptr)
        p = p->next;
    p->next = s;
    s->next = nullptr;
}

void ploynom::addNode(float in_coef,int in_expn){
    node * s = this->head;
    while(s->next) s=s->next;//到达末尾
    node * p = new node();
    p->coef=in_coef;
    p->expn=in_expn;
    s->next = p;
    p->next = nullptr;
}
//ee , firstly I am not add ploynom:: and it said invail use of this : outside of a non-static member function
ploynom & ploynom::operator+(ploynom & a){
    node * p1 = this->head;
    node * p2 = a.head;
    node * pd;//用于删除的临时节点，在stack内部即可，不用于返回
    ploynom * p3 = new ploynom();//在堆上申请的空间，准备用于返回指向该链表的引用
    node * p = p3->head;
    while (p1 && p2){
            if (p1->expn < p2->expn){//比较指数大小，把两个一元多项式的项按指数递增序列排列
                p->next = p1;
                p = p->next;
                p1 = p1->next;
            }
            else if (p1->expn>p2->expn){
                p->next = p2;
                p = p->next;
                p2 = p2->next;
            }
            else {//当指数相同时两系数相加
                p1->coef = p1->coef+ p2->coef;
                if (p1->coef != 0.0){//找出系数为零的项并删除
                    p->next = p1;
                    p = p->next;
                    p1 = p1->next;
                    p2 = p2->next;
                }
                else{
                    pd = p1;
                    p1 = p1->next;
                    p2 = p2->next;
                    delete pd;
                }
            }
        }
        if (p1){//若链表A还有剩余
            p->next = p1;
        }
        if (p2 != nullptr){
            p->next = p2;
        }
    return *p3;
}
ploynom & ploynom::operator-(ploynom & a){
    for(node* p2 = a.head;p2!=nullptr;p2=p2->next)
         p2->coef = -p2->coef;
    return *this+a;
}
ploynom & ploynom::operator*(ploynom & a){
    ploynom sum;
    for(node * p1 =this->head;p1!=nullptr;p1=p1->next){
        ploynom item;
        for(node * p2=a.head;p2!=nullptr;p2=p2->next){
            item.addNode(p2->coef*p1->coef,p2->expn+p1->expn);
        }
        //sum = sum + item
    }
    return sum;
}
ploynom & ploynom::operator/(ploynom & a){
    
}