#include <stdio.h>
int main(void) {
    int a,b,c;
    int total; // 현재 시간 분 단위로
    int time; // 현재 시간 + 요리 시간
    scanf("%d %d\n", &a, &b);
    scanf("%d", &c);
    total=a*60+b;
    time=total+c;
    a=time/60;
    b=time%60;
    if(a>=24)
        a=a-24;
    printf("%d %d\n",a,b);
}