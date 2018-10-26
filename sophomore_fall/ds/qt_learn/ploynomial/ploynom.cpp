#include "ploynom.h"

ploynom::~ploynom()
{
    NODE *p = head;
    while(head)
    {
        p = head;
        head = head->next;
        delete (p);
    }
}

bool ploynom::creatPloynom(std::string str){
    int index;
    for(std::string::size_type i = 0;str[i];i++){

    }

}

bool ploynom::clearPloynom(){
    NODE * p = head;
    while (head) {
        p = head;
        head = head->next;
        delete p;
    }
}

