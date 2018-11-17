#include"vector.cpp"//
/*  #include"vector.h"
/tmp/ccI67Sbe.o：在函数‘Vector<int>::Vector(int const*, int)’中：
main.cpp:(.text._ZN6VectorIiEC2EPKii[_ZN6VectorIiEC5EPKii]+0x29)：对‘Vector<int>::copyFrom(int const*, int, int)’未定义的引用
collect2: error: ld returned 1 exit status
原因:缺少函数原型
在形成obj文件的时候ojbk
但是ld的时候必须找到函数原型
*/
using namespace std;
int main (){
    int a[6]={3,425,626,616,2,234};
    Vector<int> vet(a,0,5);
    for(int i = a[0];i<6;i++)
        cout<<i;
    cout <<endl;//without this line there will be a '%' 
    for(int i = vet[0];i<5;i++)
        cout<<vet[i]<<endl;

}