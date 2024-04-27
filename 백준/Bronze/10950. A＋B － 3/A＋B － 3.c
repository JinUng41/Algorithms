#include <stdio.h>
int main(void) {
    int t;//테스트 케이스 수
    int a,b;//변수
    scanf("%d\n",&t);
    for (int i=1;i<=t;i++){
        scanf("%d %d",&a,&b);
        printf("%d\n",a+b);
    }
}