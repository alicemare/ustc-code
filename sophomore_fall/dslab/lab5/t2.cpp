//2018.12.23 11:19
#include <iostream>
using namespace std;
#define INTMAX 100
typedef struct hashitem
{
    int key = 0;
    int success = 0;
    int fail = 1;
    struct hashitem *next = nullptr;
} entry;

int createmap(entry *hashmap)
{
    int n, p;
    cin >> n;
    int *values = new int[n];
    for (int i = 0; i < n; i++)
        cin >> values[i];
    cin >> p;
    for (int i = 0; i < n; i++)
    {
        int fkey = values[i] % p;
        if (hashmap[fkey].key != 0)
        //如果冲突
        {
            entry *p = hashmap[fkey].next;
            entry *tail = &hashmap[fkey];
            int num = 2; //至少是第2个
            entry *newitem = new entry;
            newitem->key = values[i];
            while (p)
            {
                tail = tail->next;
                p = p->next;
                num++;
            }
            //空指针的特殊性...
            tail->next = newitem; //把新节点连接到链表
            newitem->success = num;
        }
        else
        {
            hashmap[fkey].key = values[i];
            hashmap[fkey].success = 1; //第一步查找到
        }
    }
    //释放动态申请的空间
    delete[] values;
    return n;
}
void failfind(entry *hashmap, int n)
{
    //给各个item设置查找失败时查找次数
    for (int i = 0; i < n; i++)
    {
        entry *p = &hashmap[i];
        if (p->success == 0) //该节点不存在
            continue;
        else
        {
            int num = 2;
            entry *q = p->next;
            while (q)
            {
                num++; //求分支的深度
                q = q->next;
            }
            while (p)
            {
                p->fail = num;
                p = p->next;
            } //end while
        }     //end else
    }         //end for
} //end func
void printout(entry *hashmap, int p)
{
    float suc = 0.0;
    float fail = 0.0;
    cout << "\t\t"
         << "关键字 "
         << " 成功次数 "
         << " 失败次数 " << endl;
    for (int i = 0; i < p; i++)
    {
        float suc_sum = 0.0;
        float fail_sum = 0.0;
        entry *p = &hashmap[i];

        cout << "哈希表地址：" << i << "   " << p->key << '\t' << p->success << '\t' << p->fail << endl;
        entry *q = p->next;
        while (q)
        {
            cout << "\t\t" << q->key << '\t' << q->success << '\t' << q->fail << endl;
            suc_sum += q->success;
            fail_sum += q->fail;
            q = q->next;
        } //end of branch
        suc += suc_sum;
        fail += fail_sum;
    } //end of for
    cout << "成功平均次数：" << suc / p << endl;
    cout << "失败平均次数：" << fail/p << endl;
}

int main()
{
    entry *hashmap = new entry[INTMAX];
    int n = createmap(hashmap);
    failfind(hashmap, n);
    printout(hashmap, n);
}
