#include <stdio.h>
int self_num(int n){
    int sum=n;
    while(n>0){
        sum+=n%10;
        n=n/10;
    }
    if(sum>10000)
        sum=0;
    else
        sum;
    return sum;
}

int main(){
    int arr[10001]={0,};
    for (int i=0;i<10001;i++){
        arr[self_num(i)]=1;
    }
    for (int j=0;j<10001;j++){
        if(arr[j]!=1)
            printf("%d\n",j);
    }
}
