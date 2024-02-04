#include <stdio.h>
int main() {
    int n,max=0;
    scanf("%d",&n);
    int score[1000]={0};
    float nscore[1000]={0};
    float sum=0;
    for (int i=0;i<n;i++){
        scanf("%d",&score[i]);
    }
    for(int i=0;i<n;i++){
        if(max<score[i])
            max=score[i];
    }
    for(int i=0;i<n;i++){
        nscore[i]=(float)score[i]/max*100;
    }
    for(int i=0;i<n;i++){
        sum+=nscore[i];
    }
    printf("%lf",sum/n);
}
