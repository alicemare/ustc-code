#include <iostream>
#include "../lab2/queue.h"
using namespace std;
#define INTMAX 100
struct entry
{
    int key;
    int value;
    int success = 0;
    int fail = 1;
} hashtable[INTMAX];
void output(int n, int p)
{
    cout << "=====" << endl;
    float suc_sum=0.0;
    float fail_sum=0.0;
    cout << "哈希表的地址\t关键字\t成功次数\t失败次数" << endl;
    for (int i = 0; i < n; i++)
    {
        cout << i << "\t\t" << hashtable[i].value << '\t' << hashtable[i].success << "\t\t" << hashtable[i].fail;
        suc_sum+=hashtable[i].success;
        fail_sum+=hashtable[i].fail;
        cout << endl;
    }
    cout<<"成功平均查找次数："<<suc_sum/n<<endl;
    cout<<"失败平均查找次数："<<fail_sum/n<<endl;
}
void linesfind(int temp, int p)
{
    int num = temp % p;
    int n = 0;
    while (hashtable[++num].value)
        n++;
    hashtable[num].value = temp;
    hashtable[num].success = n;
}
void findcnt(int *raw, int n, int p)
{
    //失败查找次数
    for (int i = 0; i < n; i++)
    {
        int fail = 1;
        int cnt = 0;
        int num = raw[i] % p;
        while (hashtable[num].value != raw[i])
        {
            num++;
            cnt++;
        }
        hashtable[i].fail = fail + cnt;
    }
    //成功查找次数
    for (int i = 0; i < n; i++)
    {
        if (!hashtable[i].value)
            continue;
        else
            hashtable[i].success++;
    }
}

int main()
{
    int n, p;
    cin >> n;
    int raw[INTMAX];
    for (int i = 0; i < n; i++)
        cin >> raw[i];
    cin >> p;
    for (int i = 0; i < n; i++)
    {
        int key = raw[i] % p;
        cout << "key:" << key << "\tdata" << raw[i] << endl;
        if (!hashtable[key].value)
            hashtable[key].value = raw[i];
        else
            linesfind(raw[i], p);
    }
    //cin>>p;;
    findcnt(raw, n, p);
    for(int i=0;i<n;i++){
        if(hashtable[i].value==0)
            hashtable[i].fail=1;
    }
    output(n, p);
}
