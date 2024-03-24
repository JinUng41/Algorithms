#include <string.h>
#include <stdio.h>

int main(void) {
    int C;
    scanf("%d",&C);
    int N;
    int a[1000];
    for (int i=0;i<C;i++){
        scanf("%d",&N);
        int sum=0;
        for(int j=0;j<N;j++){
            scanf("%d",&a[j]);
            sum+=a[j];
        }
        double average=(double)sum/N;
        int count=0;
        for(int j=0;j<N;j++){
            if(a[j]>average)
                count++;
        }
        printf("%.3f%%\n",(double)count/N*100);
    }
}
