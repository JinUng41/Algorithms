#include <stdio.h>
#include <string.h>
int main(){
    char S[100];
    scanf("%s",S);
    int arr[26];
    for (int i=0;i<26;i++){
        arr[i]=-1;
    }
    for (int j=0;j<strlen(S);j++){
        if(arr[S[j]-'a']==-1)
            arr[S[j]-'a']=j;
        else
            continue;
    }
    for (int a=0;a<26;a++){
        printf("%d ",arr[a]);
    }
}
