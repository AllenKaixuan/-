#include <stdio.h>

int f(int a){
	int i=a;
	while(i>=-1 && i<+7)
	{
		if(i%2!=0){
			a=a*i;
		}
		i=i-1;
	}

	return a;
}

int main(){
	int a;
	int c=2;
	scanf("%d",&a);
	const int b=4;
	if(0<a<=b || a==2){
		a=a+b;
	}
	
	c=f(a);
	//这是注释
	printf("%d",c);
	return 0;
}