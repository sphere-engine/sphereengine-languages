#include <stdio.h>

int main(void) {
  int x;
  for(; scanf("%d",&x) > 0 && x != 42; printf("%d\n", x));
  return 0;
}

