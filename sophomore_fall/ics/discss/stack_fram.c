#include<stdio.h>
int s(int c1, int c2) {
return c1 + c2;
}
int t(int a1, int a2, int a3, int a4,
int a5, int a6, int a7, int a8) {
int b1 = a1;
return s(b1,a8);
}
int main() {
printf("%d",t(1,2,3,4,5,6,7,8));
}
