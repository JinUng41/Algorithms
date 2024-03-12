#include <stdio.h>
#include <string.h>
int main() {
    char arr[100];
    scanf("%s",&arr);
    for (int i=0;i<strlen(arr);i++){
        if(arr[i]>='a'&&arr[i]<='z'){
            arr[i]-=32;
        }
        else if(arr[i]>='A'&&arr[i]<='Z'){
            arr[i]+=32;
        }
    }
    printf("%s",arr);
}
