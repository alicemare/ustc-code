## 数据结构上机实验报告

### lab5 hash表的应用

[TOC]

#### t1 线性寻址法解决hash冲突

##### 问题描述

给定一组key-value对，要求建立hash表，用mod(n)作为哈希函数，使用线性寻址法解决冲突

##### 算法描述

使用线性寻址查找，如果当前数组元素已经被占用，则就去下一个元素查找是否空闲

>  成功次数：$$ 1+offset $$
>
> 失败次数：$$ n $$

其中n为数组规模，offset为偏移量

```c++
void linesfind(int temp, int p)
{
    int num = temp % p;
    int n = 0;
    while (hashtable[++num].value)//线性寻址查找可用空间
        n++;
    hashtable[num].value = temp;
    hashtable[num].success = n;
}
    
```

##### 测试结果

![1547117522668](/home/alicemare/.config/Typora/typora-user-images/1547117522668.png)

#### t2 拉链法解决hash冲突

##### 问题描述

给定一组key-value对，要求建立hash表，用mod(n)作为哈希函数，使用拉链法解决冲突

##### 算法描述

建立线性链表，每个头结点可以存储第一次hash(x)的结果，如果hash(y)等于hash(x)，则通过链表的方式把x和y连接起来，以此类推

> 成功查找次数 $$ 1+offset$$ 	其中offset指在链表上的位置相对于头结点偏移量
>
> 失败查找次数 $1+sizeof(linkhash(x))$	需要遍历整个hash(x)的链表才能确定不存在对应元素

```c++
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
```

##### 测试结果

![1547117816455](/home/alicemare/.config/Typora/typora-user-images/1547117816455.png)

#### 实验收获

通过这次实验，了解到了如python，JavaScript等支持键值对数组的动态语言内部数组实现细节（的皮毛），了解到了hash函数，可以通过hash函数实现对数据的高效存储和查找，是一种很优秀的字典类数据结构，而且实现起来比较容易