#include <stdio.h>
#include <string.h>
int main() {
    char arr[2];
    scanf("%s",&arr);
    char a=arr[0];
    char b=arr[1];
    switch (a) {
        case 'A':
            switch (b) {
                case '+':
                    printf("%.1lf",4.3);
                    break;
                case '0':
                    printf("%.1lf",4.0);
                    break;
                case '-':
                    printf("%.1lf",3.7);
                    break;
            }
            break;
        case 'B':
            switch (b) {
                case '+':
                    printf("%.1lf",3.3);
                    break;
                case '0':
                    printf("%.1lf",3.0);
                    break;
                case '-':
                    printf("%.1lf",2.7);
                    break;
            }
            break;
        case 'C':
            switch (b) {
                case '+':
                    printf("%.1lf",2.3);
                    break;
                case '0':
                    printf("%.1lf",2.0);
                    break;
                case '-':
                    printf("%.1lf",1.7);
                    break;
            }
            break;
        case 'D':
            switch (b) {
                case '+':
                    printf("%.1lf",1.3);
                    break;
                case '0':
                    printf("%.1lf",1.0);
                    break;
                case '-':
                    printf("%.1lf",0.7);
                    break;
            }
            break;
        case 'F':
            printf("%.1lf",0.0);
            break;
    }
}
