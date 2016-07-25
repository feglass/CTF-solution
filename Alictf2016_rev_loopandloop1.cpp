#include <stdio.h>

static int round = 0;
int chec(int, int);

int check1(int a, int b) {
	
	int j = 1;
	int i = a;
	int k = 1;
	while (k <100) {
		i = k + i;
		k++;
	}
	
	printf("check1: %d\n", i-a);
	return chec(i, b);
	
}

int check2(int a, int b) {
	int paramInt1;
	printf("check2 \n");
	if (b % 2 == 0) {
		paramInt1=1;
		while(paramInt1 <1000) {
			a = a - paramInt1;
			paramInt1++;
		}
		return chec(a, b);
		
	}else {
		paramInt1 = 1;
		while(paramInt1 < 1000) {
			a = a + paramInt1;
			paramInt1++;
		}
		return chec(a, b);
		
		
	}
	
}

int check3(int a, int b) {
	int j = 1;
	int i = a;
	int k = 1;
	while(k < 10000) {
		i = i + k;
		k ++;
	}
	printf("check3: %d\n", i-a);
	return chec(i, b);
}

int chec(int a, int b) {
	b--;
	round++;
	printf("round: %d\n", round);
	if (b == 0)
		return a;
	else {
		if (round%3==1)
			return check1(a, b);
		else if (round%3==2)
			return check2(a, b);
		else return check3(a, b);
	} 
}
int main() {
	
	int num;
	int i;
//	for (i=9999999; i<600000; i++)
	i = 235493408;
		printf("%d\n", chec(i, 99));
	
	return 0;
}
