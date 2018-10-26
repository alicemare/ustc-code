#ifndef PLOYNOM_H
#define PLOYNOM_H
#include <string>

typedef struct node
{
    float coef;
    int expn;
    struct node * next;
}NODE;

class ploynom
{
public:
    ploynom(){head = nullptr;}
    ~ploynom();
    bool creatPloynom(std::string str);
    //bool insertPloynom();
    bool clearPloynom();
    bool isEmpty(){return head == nullptr;}
    ploynom operator+(const ploynom ploy);
    ploynom operator-(const ploynom ploy);
    ploynom operator*(const ploynom ploy);


private:
    NODE * head;


};

#endif // PLOYNOM_H
