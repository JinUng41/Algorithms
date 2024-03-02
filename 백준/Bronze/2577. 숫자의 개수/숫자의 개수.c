#include <stdio.h>
int main() {
    int arr[10]={0,};
    int a,b,c;
    scanf("%d\n%d\n%d",&a,&b,&c);
    int sum=a*b*c;
    while(sum>0){
        int num=sum%10;
        arr[num]++;
        sum=sum/10;
    }
    for (int i=0;i<10;i++){
        printf("%d\n",arr[i]);
    }
}