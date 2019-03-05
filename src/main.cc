#include "main.h"

#include <cstdio>

int main() {
#ifdef USE_SYSTEM_LIB
  printf("Hello world with system lib!\n");
#else
  printf("Hello world without system lib!\n");
#endif

  return 0;
}
