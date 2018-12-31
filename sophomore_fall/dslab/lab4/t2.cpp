#include <cstdio>
#include <cstring>
#include <iostream>
#include <algorithm>

const int maxn = 5000005;

using namespace std;
long long n,m;
long long answer;
long long fx,fy;
long long fa[maxn];

struct node{
	long long f,t,c;
}e[maxn];

inline bool cmp(node a,node b){
	return a.c < b.c;
}

inline long long find(long long x){
	return fa[x] == x?x:fa[x] = find(fa[x]);
}

void kruskal(){
	sort(e+1,e+1+m,cmp);
	for(long long i = 1;i <= m;i++){
		fx = find(e[i].f);
		fy = find(e[i].t);
		if(fx != fy){
			fa[fx] = fy;
			answer += e[i].c;
		}
	}
	printf("%lld\n",answer);
}

int main(){
	scanf("%d%d",&n,&m);	
	for(long long i = 1;i <= n;i++) fa[i] = i;
	for(long long i = 1;i <= m;i++) scanf("%lld %lld %lld",&e[i].f,&e[i].t,&e[i].c);
	kruskal();	

return 0;
}
