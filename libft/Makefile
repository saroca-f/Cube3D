NAME = libft.a

CC = clang
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

FILES = ft_memset \
        ft_bzero \
        ft_memcpy \
        ft_memmove \
        ft_memchr \
        ft_memcmp \
        ft_strlen \
        ft_strlcpy \
        ft_strlcat \
        ft_strchr \
        ft_strrchr \
        ft_strnstr \
        ft_strcmp \
        ft_strncmp \
        ft_atoi \
        ft_isalpha \
        ft_isdigit \
        ft_isalnum \
        ft_isascii \
        ft_isprint \
        ft_toupper \
        ft_tolower \
        ft_calloc \
		ft_realloc \
        ft_strdup \
        ft_substr \
        ft_strjoin \
        ft_strtrim \
        ft_split \
		ft_free_split \
        ft_itoa \
        ft_strmapi \
        ft_striteri \
        ft_putchar_fd \
        ft_putstr_fd \
        ft_putendl_fd \
        ft_putnbr_fd \
		ft_lstnew \
		ft_lstadd_front \
		ft_lstsize \
		ft_lstlast \
		ft_lstadd_back \
		ft_lstdelone \
		ft_lstclear \
		ft_lstiter \
		ft_lstmap \
		ft_printf \
		ft_print_char \
		ft_print_str \
		ft_print_nbr \
		ft_print_ptr \
		ft_print_ptrhex \
		ft_print_unsig \
		ft_print_hex \
		ft_print_hexup \
		ft_printf_error \
		ft_print_char_error \
		ft_print_str_error \
		ft_print_nbr_error \
		ft_print_ptr_error \
		ft_print_ptrhex_error \
		ft_print_unsig_error \
		ft_print_hex_error \
		ft_print_hexup_error \
		get_next_line \
		get_next_line_utils \


$(shell mkdir -p ./src/obj)

SRCS_DIR = ./src/
SRCS = $(addprefix $(SRCS_DIR), $(addsuffix .c, $(FILES)))

OBJS_DIR = ./src/obj/
OBJS = $(addprefix $(OBJS_DIR), $(addsuffix .o, $(FILES)))

$(OBJS_DIR)%.o: $(SRCS_DIR)%.c
	@$(CC) $(CFLAGS) -c -o $@ $<

$(NAME): $(OBJS)
	@$(AR) $@ $^

all: setup $(NAME)

clean:
	@$(RM) $(OBJS)
	$(shell rm -rf ./src/obj)

fclean: clean
	@$(RM) $(NAME)

setup:
	$(shell mkdir -p ./src/obj)

re: clean all

.PHONY: clean fclean re all setup