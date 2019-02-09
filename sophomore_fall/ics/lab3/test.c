typedef int i16;
typedef unsigned int u16;
i16 func(i16 n, i16 a, i16 b, i16 c, i16 d, i16 e, i16 f){ //Lots of arguments, hah?
 i16 t = GETC() - '0' + a + b + c + d + e + f;
 if(n > 1){
 i16 x = func(n - 1, a, b, c, d, e, f);
 i16 y = func(n - 2, a ,b, c, d, e, f);
 return x + y + t - 1;
 }else{
 return t;
 }
}
i16 main(void){
 i16 n = GETC() - '0';
 return func(n, 0, 0, 0, 0, 0, 0);
}
