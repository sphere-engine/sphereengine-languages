#import <Foundation/Foundation.h>
 
int main(int argc, const char * argv[]) {
    int a;
    while (YES) {
        scanf("%d", &a);
        if (a == 42) break;
        printf("%d\n", a);
    }
    return 0;
} 
