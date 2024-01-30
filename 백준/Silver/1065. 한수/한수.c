#include <stdio.h>
void hansoo(int N){
    if(N<100)
        printf("%d",N);
    else {
        int i;
        int count=99;
        int a,b,c;
        for(i=100;i<=N;i++){
            a=i/100;
            b=i/10%10;
            c=i%10;
            if ((c-b)==(b-a))
                count++;
        }
        printf("%d",count);
    }
}
int main(){
    int N;
    scanf("%d",&N);
    hansoo(N);
}
