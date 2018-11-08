#ifndef PLOYNOM_H
#define PLOYNOM_H
#include <string>
#include <sstream>
#include <vector>
using namespace std;

struct node
{
    float coef;  //多项式的系数
    int expn;    //多项式的指数
    node *next;   //指向下一个结点的指针
};
class ploynom
{
public:
    node * head;
    ploynom();
    ~ploynom();
    void creatPloynom(string str);
    void clearPloynom();
    bool isEmpty();
    node * creatNode(string token);
    void printPloynom();
    void push_back(string token);
    void addNode(float coef,int expn);

    ploynom & operator=( ploynom & a);
    ploynom & operator+( ploynom & a);
    ploynom & operator-( ploynom & a);
    ploynom & operator*( ploynom & a);
    ploynom & operator/( ploynom & a);


private:

    


};

#endif // PLOYNOM_H
