#include<stdio.h>
#include<stdlib.h>

extern end;
extern etext;

int I;

main( int argc, char ** argv){

	int i;
    int *ii;
	printf("&etext=%p\n", &etext);
	printf("&end=%p\n",&end);
    printf("sbrk(0)= 0x%lx\n", sbrk(0));

	printf("\n");
	ii=(int *) malloc (sizeof(int));

	printf("main=%p\n",main);
	printf("&I=%p\n",&I);
	printf("&i=%p\n",&i);
	printf("&argc=%p\n",&argc);
	printf("&ii=%p\n",&ii);
	printf("ii=%p\n",ii);

}
