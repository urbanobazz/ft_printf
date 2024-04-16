NAME = libftprintf.a
CC = cc
CCAR = ar rcs
CFLAGS = -Wall -Wextra -Werror
HFILE = ft_printf.h
OBJS = ${SRC:.c=.o}
SRC =	ft_printf.c\
		ft_putsth.c\
		ft_printf_utils.c\

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ -I $(HFILE)

$(NAME): $(OBJS)
	$(CCAR) $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
