#include <stdio.h>
extern end;
extern etext;
int counter = 1;
main( )
{
char c;
char iptr[10000];
printf("&c = 0x%lx, iptr = 0x%x ... ", &c, iptr);
fflush(stdout);
c = iptr[0];
printf("ok... %d\n", counter++);
main( );
}
