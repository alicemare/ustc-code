int main (){
	int x=6;
	int y=8;
	do{
		int n =x%y;
		y=x;
		x=n;
	
	}while(y>0);
	return x;
	
}
