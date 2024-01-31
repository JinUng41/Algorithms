
#include <stdio.h>
int main() {
    int n, result;
    scanf("%d",&n);
    result=n;
    int ten,one,c,d,count=0;
    while(1){
        ten=n/10;
        one=n%10;
        c=(ten+one)%10;
        d=(one*10)+c;
        n=d;
        count++;
        if(d==result)
            break;
    }
    printf("%d",count);
}