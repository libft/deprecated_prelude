#include "prelude.h"
#include "unprelude.h"

#include <stdlib.h>
#include <stdio.h>

void *ft_malloc_mock(size_t len)
{
    printf("ft_malloc_mock(%zu) called\n", len);
    return malloc(len);
}
