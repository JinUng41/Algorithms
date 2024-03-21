#include<stdio.h>


int main() {

int arr[10];
int arr2[10];
int ans = 0;

for (int i = 0; i < 10; i++) {
scanf("%d", &arr[i]);
arr2[i] = arr[i] % 42;
}

for (int i = 0; i < 10; i++){
int cnt = 0;
for (int j = i + 1; j < 10; j++) {
if (arr2[i] == arr2[j]) {
cnt++;
break;
}


}

if (cnt == 0)
ans++;
}

printf("%d", ans);
}