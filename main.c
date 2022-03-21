#include <stdio.h>
#include <stdlib.h>

int main() {
    void *mem = malloc(100);
    if (mem) free(mem);
    return 0;
}
