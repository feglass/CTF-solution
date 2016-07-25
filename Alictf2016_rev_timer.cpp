#include <stdio.h>


int is2(int n) {
	if(n==0) return 0;
	if(n>=1&&n<=3) return 1;
	if(n%2==0) return 0;
	if(n%3==0) return 0;
	
	int i;
	for(i=5; ;i=i+6) {
		if(n<i*i) return 1;
		if(n%i==0) return 0;
		if(n%(i+2)==0) return 0;
	}
}

int main() {
	
	int i, k;
	
	k=0;
	for(i=200000; i>-1; i--) {
		if(is2(i)==0)
			k=k-1;
		else k=k+100;
	}
	printf("%d", k);
	
	return 0;
}

