#ifndef __PRELUDE_INCLUDED
#define __PRELUDE_INCLUDED

#include <stddef.h>

#define malloc ft_malloc_mock

void *ft_malloc_mock(size_t len);

#endif
