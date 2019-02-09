#include <iostream>
#include <string>
#include<fstream>
#include <boost/graph/graphviz.hpp>
using namespace std;


void run(string cmd)
{
	const int N = 300;
	char line[N];
	FILE *fp;
	const char *sysCommand = cmd.data();
	//打开管道文件
	if ((fp = popen(sysCommand, "r")) == NULL)
	{
		cout << "error" << endl;
		return;
	}
	while (fgets(line, sizeof(line) - 1, fp) != NULL)
	{
		cout << line;
	}
	pclose(fp);
}

void write()
{
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
}
int main()
{
	write();
	run("dot -Tpng dot -o out.png");
	run("fim -a out.png");
}
