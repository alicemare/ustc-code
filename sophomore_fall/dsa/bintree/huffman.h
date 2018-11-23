#pragma once

#include <string>
#include <vector>

using namespace std;

class HuffmanTree
{
private:
    typedef struct HuffmanNode
    {
        int weight;
        int lChild, rChild, parent;
    } *pNode;
    pNode huffman;
    int * hf;   //用来排序
    int _n,_m;
    void SelectNode(int i,int *min1,int *min2);
public:
    HuffmanTree(int * keys, int N);
    vector<string> HuffmanCoding(int len);
    string Encode(vector<string> hfCode, vector<char> alphabet, string str);
    string Decode(int len, vector<char> alphabet, string str);
    ~HuffmanTree();
};

void HuffmanTree::SelectNode(int bg, int * min1, int * min2){
    int index = bg - _n;
    //每次进入实际上都向后移了一位
    for (int i = 0; i < bg; i++){
        if (hf[index] == huffman[i].weight){
            *min1 = i;
            break;
        }
    }
    for (int i = 0; i < bg; i++){
        //注意有可能合并后的值会与权值重复
        if (*min1 != i && hf[index + 1] == huffman[i].weight){
            *min2 = i;
            break;
        }
    }
    int newNode = hf[index] + hf[index + 1];
    int i = index + 2;
    //将新产生的权值插入到排序数组合适的位置
    for (; i < _n; i++){
        if (newNode > hf[i])
            hf[i - 1] = hf[i];
        else
            break;
    }
    hf[i - 1] = newNode;
}

HuffmanTree::HuffmanTree(int * keys, int N)
{
    using namespace std;
    this->_n = N;
    //总的节点数 
    this->_m = 2 * N - 1;
    huffman = new HuffmanNode[_m];
    hf = new int[N];
    for (int i = 0; i < _m; i++){   //初始化
        if (i < N){     //前N个为权重叶子节点
            huffman[i].weight = keys[i];
            if (i == 0)
                hf[0] = keys[0];
            else{
                int j = i - 1;
                //从小到大插入到排序数组中
                for (; j >= 0; j--){
                    if (keys[i] < hf[j]){
                        hf[j + 1] = hf[j];
                    }
                    else
                        break;
                }
                hf[j + 1] = keys[i];
            }
        }
        else        //后面的为辅助结点，非叶子节点
            huffman[i].weight = -1;
        huffman[i].lChild = -1;
        huffman[i].rChild = -1;
        huffman[i].parent = -1;
    }
    //创建，从第一个辅助节点开始
    for (int i = _n; i < _m; i++){
        int min1;
        int min2;
        SelectNode(i, &min1, &min2);
        huffman[min1].parent = i;
        huffman[min2].parent = i;
        huffman[i].lChild = min1;
        huffman[i].rChild = min2;
        huffman[i].weight = huffman[min1].weight + huffman[min2].weight;
    }
}

vector<string> HuffmanTree::HuffmanCoding(int len){
    int cur = 0;
    int parent = 0;

    vector<string> hfcode = vector<string>(len);

    for (int i = 0; i < len; i++){
        string tmp = "";
        cur = i;
        parent = huffman[cur].parent;
        while (parent>=0)
        {
            if (cur == huffman[parent].lChild){
                tmp += "0";
            }
            else
            {
                tmp += "1";
            }
            cur = parent;
            parent = huffman[parent].parent;
        }
        reverse(tmp.begin(), tmp.end());
        hfcode[i] = tmp;
    }
    return hfcode;
}

string HuffmanTree::Encode(vector<string> hfCode, vector<char> alphabet, string str){
    string encodeStr = "";
    for (int i = 0; i<str.length(); i++) {
        for (int j = 0; j < alphabet.size(); j++)
            if (str.at(i) == alphabet[j])
                encodeStr += hfCode[j];
    }
    return encodeStr;
}
string HuffmanTree::Decode(int len, vector<char> alphabet, string str){
    //最后一个点实际上为哈夫曼树的根节点
    int m = 2 * len - 1;
    string decodeStr = "";
    for (int i = 0; i<str.length(); ) {
        int j;
        //从根开始解码，一直找到叶子节点为止
        for (j = m - 1; (huffman[j].lChild >= 0 || huffman[j].rChild >= 0);){
            if (str.at(i) == '0')
                j = huffman[j].lChild;
            else
                j = huffman[j].rChild;
            i++;
        }
        decodeStr += alphabet[j];
    }
    return decodeStr;
}
