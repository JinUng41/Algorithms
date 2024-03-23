#include <stdio.h>
#include <string.h>
int main() {
    int a,b,i;
    while(1){
        scanf("%d %d",&a,&b);
        if(a>b)printf("Yes\n");
        else if (a==0&&b==0) break;
        else printf("No\n");
    }
}
