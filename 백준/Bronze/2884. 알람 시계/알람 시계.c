#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main() {
    int h, m;
    int total;
    scanf("%d %d", &h, &m);
    if (m < 45) {
        h -= 1;
        m -= 45;
        m += 60;
        if (h < 0)
            h = 23;
        printf("%d %d", h, m);
    }
    else if(m>=45) {
        m -= 45;
        printf("%d %d", h, m);
    }
}