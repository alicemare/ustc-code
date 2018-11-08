#include<iostream>
#include<string>
#include<sstream>
using namespace std;
/*
    第一次使用stringstream，想尝试去做任意类型之间的convert
    第一个hint是怎么从token里边取你所需要的，我这个算法高度依赖输入格式，
    明显有很多效率比较低的地方,比如我不是很明白为什么把str置为“”之后相同
    方法会发生溢出，所以采用了创建两个sstream对象的方法
    
    谔谔好吧我这次试了str.clear()而不是str.str("")就好多了。。。

*/

int main (){
    string token = "12.2x^10";
    stringstream str;
    float coef;
    int exp;
    string::const_iterator v=token.cbegin();
    string s_coef="";
    string s_exp="";
    //截取coef系数部分
    while(*v!= 'x'){s_coef+=*v;v++;}        
    str.str(s_coef);
    str>>coef;
    //str.str("");
    str.clear();
    //截取指数部分
    v++;//略去^符号
    while(v++!=token.cend())
        s_exp+=*v;
    str.str(s_exp);
    str>>exp;
    cout<<coef<<"  "<<exp<<endl;
}