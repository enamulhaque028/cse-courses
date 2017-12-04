#include<stdio.h>
#include<stdlib.h>

extern end;
extern etext; // from linkers

int I; // bss, data segment's starting point and data segment's ending point

main( int argc, char ** argv){ // code segment starting point and end of codesegment is etext

	int i;	// stack, size 8102 kb
    int *ii;	
	printf("&etext=%p\n", &etext);
	printf("&end=%p\n",&end);
    printf("sbrk(0)= 0x%lx\n", sbrk(0));	// sbrk(): 

	printf("\n");
	ii=(int *) malloc (sizeof(int)*100); // heap
	iii=(int *) malloc (sizeof(int)*100);	

	printf("main=%p\n",main);
	printf("&I=%p\n",&I);
	printf("&i=%p\n",&i);
	printf("&argc=%p\n",&argc);
	printf("&ii=%p\n",&ii);
	printf("ii=%p\n",ii);
	printf("ii=%p\n",iii);
}
