#include <stdio.h>
int main() {
    long n,m;
    scanf("%ld %ld",&n,&m);
    if(n>m)
        printf("%ld",n-m);
    else
        printf("%ld",m-n);
}
