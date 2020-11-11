#include <stdio.h>
int main()
{
	int a,b=1,c=3,d=9,e=9;
	a=b>c?c>d?12:d>e?10:11:12;
	printf("%d",a);
	return 0;
}
