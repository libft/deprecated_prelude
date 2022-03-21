AR := ar
CC := gcc
CCLD := gcc
CFLAGS := -Wall -Wextra -Werror
TARGET := main.exe
SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)
DEPS := $(OBJS:.o=.d)
TEMPS := *.o *.d
TEMPS += *.bc *.i *.s

all: $(TARGET)
.PHONY: all clean fclean re
clean:
	rm -f $(TEMPS)
fclean: clean
	rm -f $(TARGET)
re: fclean all
test:
	norminette

$(OBJ_DIR)/%.o: %.c
	sh -c "cat prelude.h $< | $(CC) $(CFLAGS) -x c -o $@ -MMD -c -"

$(TARGET): $(OBJS)
	$(CCLD) -o $@ $^

-include $(DEPS)
