NAME := libft.a
CFLAGS := -Wall -Wextra -Werror -fPIC

SRC := ft_isalpha.c \
	ft_isalnum.c \
	ft_isdigit.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_strlen.c \
	ft_memset.c \
	ft_bzero.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_atoi.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_split.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_striteri.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_freestr.c \
	ft_lsc.c \
	ft_printf.c \
	ft_isspace.c \
	ft_strcmp.c \
	ft_strjoin_free.c \

OBJ := $(SRC:.c=.o)
ARFLAGS := rcs
RM := rm -f

# Couleurs pour l'affichage
GREEN     := \033[1;32m
YELLOW    := \033[1;33m
RESET     := \033[0m

# Total et compteur de fichiers
TOTAL_FILES := $(words $(SRC))
CURRENT_FILE = 0
DOT_COUNTER = 0

%.o: %.c
	@$(eval CURRENT_FILE=$(shell echo $$(($(CURRENT_FILE) + 1))))
	@printf "\r$(YELLOW)[$(CURRENT_FILE)/$(TOTAL_FILES)]$(RESET) Compiling: $<                                    "
	@$(CC) $(CFLAGS) -c $< -o $@

$(NAME):
	@echo "$(GREEN)↪ Compiling libft... $(RESET)"
	@$(MAKE) --no-print-directory $(OBJ)
	@echo "\n$(GREEN)Creating library archive$(RESET)"
	@$(AR) $(ARFLAGS) $(NAME) $(OBJ)
	@echo "$(GREEN)libft.a is ready!$(RESET)"

all: $(NAME)

clean:
	@echo "$(YELLOW)Cleaning libft object files...$(RESET)"
	@$(RM) $(OBJ)

fclean: clean
	@echo "$(YELLOW)Removing libft.a...$(RESET)"
	@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
