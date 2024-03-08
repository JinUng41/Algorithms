#include <stdio.h>
#include <string.h>
int main() {
    int a,b,c,d,e,f;
    scanf("%d %d %d %d %d %d",&a,&b,&c,&d,&e,&f);
    int A,B,C,D,E,F;
    
    if (a==1) A=0;
    else if(a>1) A=1-a;
    else A=a+1;
    
    if(b==1) B=0;
    else if(b>1) B=1-b;
    else B=b+1;
    
    if (c==2) C=0;
    else if(c>2) C=2-c;
    else C=2-c;
    
    if(d==2) D=0;
    else if(d>2) D=2-d;
    else D=2-d;
    
    if(e==2) E=0;
    else if(e>2) E=2-e;
    else E=2-e;
    
    if(f==8) f=0;
    else if(f>8) F=8-f;
    else F=8-f;
    
    printf("%d %d %d %d %d %d",A,B,C,D,E,F);
}
