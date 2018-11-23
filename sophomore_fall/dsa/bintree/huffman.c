#include<stdio.h>
#include<stdlib.h>
#include<string.h> 
//定义一个哈夫曼节点，它是个结构体
typedef struct haffNode{
	int weight;//权重，就是这个字符出现的个数；如果这个节点是个父节点的话 ，就是两个子节点权重的和 
	char data;//这个用来存字符本身，比如字符是'c'，data='c'; 
	haffNode *leftChild = NULL;
    haffNode *rightChild = NULL;//定义左右子节点指针 
}haffNode; 
char code[256][50];//用二维数组来储存字符的哈夫曼编码，其中第一维的下标表示的是这个字符的ASCII码  
haffNode left[50];//用来储存所有的左子节点 
haffNode right[50];//用来储存所有的右子节点 
unsigned char saveChar = 0; //用来保存二进制文件，因为char类型是1个字节，所以每8位储存一次 ,而且用unsigned无符号型，避免符号位干扰 
unsigned char slidChar;//定义一个字符备用，以应对可能需要的操作 
//排序函数,第一个参数是哈夫曼的节点数组，第二个是数组的长度，这里用冒泡排序 
void sort(haffNode* node,int length){
	int i,j; 
	haffNode t;
	for(i=0; i<length-1; i++){
		for(j=i+1; j<length-i-1;j++){
			if(node[j].weight < node[j+1].weight){
				t = node[j];
				node[j] = node[j+1];
				node[j+1] = t;
			}
		}
	} 
} 
//构建哈夫曼树 
void creatHaffman(haffNode *node,int length){
	if(length==1){
	return; //如果数组长度为1，则结束递归，下面的就不再执行 
	}
	sort(node,length);	//将node数组按照weight从大到小排序 
	haffNode parent;//生成父节点，因为我们的数组从大到小排序过了，所以数组最后面的就是最小的节点 
	left[length] = node[length-2],right[length]=node[length-1];//定义子字节，用来存数组最后的两个节点 
	parent.weight = left[length].weight + right[length].weight;//父节点的权重等于两个子节点的 权重
	//储存两个子节点,因为parent.leftChild是指针类型，所以赋值的时候要加& 
	parent.leftChild= &left[length];
	parent.rightChild = &right[length]; 
	//将数组最后两个子节点剔除，换成父节点，然后递归创建接下来的部分 
	node[length-2] = parent;
	creatHaffman(node,length-1); 
}
//计算字符的哈夫曼编码 ,第一个参数是哈夫曼树根节点，第二个参数储存编码的字符数组，第三个参数是字符数组的长度，从0开始 
void coding(haffNode *node,char *keepCode,int length){
	//如果节点没有子节点，就说明它是叶节点，将编码存在code数组里 
	if(node->leftChild == NULL || node->rightChild == NULL){
		keepCode[length] ='\0';//给编码一个终止符，形成一个完整的字符串，方便拷贝，以防拷贝到之前的编码。 
		strcpy(code[node->data-0],keepCode);//调用strcpy函数拷贝字符串，其中code的下标用节点的字符(data)-0得到 
		return; 
	}
	keepCode[length] = '0';
	coding(node->leftChild,keepCode,length+1);
	keepCode[length] = '1';
	coding(node->rightChild,keepCode,length+1);
} 
//解压缩  
haffNode* unzip(haffNode *node,int flag){
	if(flag == 0)
	return node->leftChild;
	if(flag == 1)
	return node->rightChild;
} 
int main(){
    int count[128]={0};//用来统计字符个数，一开始清零，其中它的下标号表示这个字符的ASCII码
    char keepCode[50];//用于在生成编码的时候 临时储存编码 ，真正储存编码的地方看代码最上面的code[][]数组 
    char reder;//用来存文件中的字符 
    int fileLength=0;//用来计算原文长度 
    int zipLength=0;//用来计算压缩文长度 
    int i; 
    int num=0;//用来计算出现的字符的个数 和其它一些计数功能 
    haffNode node[100];//用来储存哈夫曼节点，这里我申请100个空间事实上不需要那么大，大概需要26+26+20（26个英文字母大小写+标点符号） 
	FILE *fpr = fopen("E:\\input.txt","r");//读入文件，其中input.txt的路径你要自己设置，可以自己建立一个文本，写一些英文进去 
	FILE *fpw = fopen("E:\\output1","wb");//写入文件，wb是写入二进制文件，路径设置随意，但是要符合格式，写入的时候文件自动生成。
	FILE *fpr1= fopen("E:\\output1","rb");;//用于解压缩时读入文件 ，rb是读入二进制文件 
	FILE *fpw1 = fopen("E:\\output3.txt","w"); //用于解压缩时写入文件 
	//解压需要用的 
	char op;
	haffNode *z;
	//读取文件 
	while((reder=fgetc(fpr))!=EOF){//一个一个地读入字符 
		fileLength ++;//每读进一个字原文长度+1 
		count[reder-0]++;//reder-0可以得到字符的ASCII码,然后累加统计 
	} 
	//循环数组，因为ASCII表中有255个字符，所以数组中有些字符是完全没有出现过的，我们要将出现过的存在charNode数组里。 
	for(i=0; i<128; i++){
		if(count[i]!=0){
			node[num].data=i;//之前说过，下标就是出现的字符的ASCII码
			node[num].weight=count[i];//count[i]存的就是字符出现的次数
			num++;//计数加1 
		}
	}
	//构建哈夫曼树
	creatHaffman(node,num); 
	//计算哈夫曼编码
	coding(&node[0],keepCode,0); 
	//根据哈夫曼编码把原来的文本压缩储存 
	//读取文件 
	num=0;//计数 
	fseek(fpr,0L,0);//因为上面已经读过文件了，fpr指针已经向下移动，所以这边使用 fseek函数将指针复原到离0（文件起始位置）0L（第0个字节）处 
	while((reder=fgetc(fpr))!=EOF){ //一个一个地读入字符 
		for(i=0; i<strlen(code[reder-0]); i++){
			saveChar |= code[reder-0][i]-'0';//让saveChar和编码中的每一位进行或操作，用字符的'1'-'0'，就可得到0000 0001.     
			num++;
			if(num == 8){
				fwrite(&saveChar,sizeof(char),1,fpw);//每8位写入一次文件
				zipLength++; 
				saveChar = 0;//重新置0 
				num=0;
			} 
			else{
				saveChar = saveChar << 1	; //每做完一步，向左移一位  
			}
		}
	} 
	//如果最后剩余的编码不到8位，将其移到最左端
	if(num != 8){
		saveChar = saveChar<<(8-num);//移到最左端 
		fwrite(&saveChar,sizeof(char),1,fpw);
		zipLength++;
	} 
	fclose(fpr);
	fclose(fpw);
	//根据哈夫曼编码解压缩,主要思想是根据编码遍历哈夫曼树 
	num=0;//计算解压缩后的文件长度 
	z = &node[0];
	while(fread(&reder,sizeof(char),1,fpr1)){
		//如果解压缩的长度等于原文长度，停止解压缩。为什么多这一个条件，因为在编码压缩的时候可能出现剩余的编码不足8位的情况，不足8位不成8位后，后面的补位可能造成干扰 
		if(fileLength == num){
			break;
		} 
		op = 128;//1000 0000
		for(i=0; i< 8; i++){
		slidChar = reder & op;
		reder = reder << 1;
		slidChar = slidChar >>7;
		z = unzip(z,slidChar-0);
		if(z->leftChild == NULL || z->rightChild == NULL){
			fprintf(fpw1,"%c",z->data);
			num++;//每写进一个字符+1 
			z = &node[0];
		}
	}
	}
	fclose(fpr1);
	fclose(fpw1);
	//计算压缩率	
	printf("原文件：%dK\n",fileLength/1024+1);
	printf("压缩完成！请查看output1：%dK\n",zipLength/1024+1); 
	printf("解压缩完成！请查看output3.txt:\%dK\n",fileLength/1024+1); 
	printf("压缩率：%.2f%%\n",(float)(fileLength-zipLength)/fileLength*100);	
    return 0;
    } 