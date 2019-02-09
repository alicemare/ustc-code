#include <fstream>
#include <iostream>
#include <string>
using namespace std;

int main()
{
	char data[100];
	string str;
	// 以写模式打开文件
	ofstream outfile;
	outfile.open("dot");
	outfile << "graph G{" << endl;
	int v, e;
	cin >> v >> e;
	while (e--)
	{
		int m, n;
		cin >> m >> n;
		outfile << m << "--" << n << endl;
	}
	outfile << '}' << endl;

	cin.ignore();

	// 再次向文件写入用户输入的数据
	//outfile << data << endl;

	// 关闭打开的文件
	outfile.close();

	return 0;
}
