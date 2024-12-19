NAME = updated_libft.a

LIBFT_PATH			=	src/libft/
FT_PRINTF_PATH		=	src/ft_printf/
GET_NEXT_LINE_PATH	=	src/get_next_line/

CC					= gcc
FLAGS				= -Wall -Werror -Wextra

REMOVE				= rm -f

ECHO				= /usr/bin/echo

#visual
MAKEFLAGS += --no-print-directory
RM_LINE = @tput cuu1 && tput el

DEF_COLOR			=	\033[0;39m
GREEN				=	\033[0;92m

FILES =	\
		${FT_PRINTF_PATH}ft_printf.c \
		${FT_PRINTF_PATH}ft_printfnum.c \
		${FT_PRINTF_PATH}ft_printchars.c \
		${FT_PRINTF_PATH}ft_printhex.c \
		${FT_PRINTF_PATH}ft_printvoid.c \
		\
		${LIBFT_PATH}ft_isalpha.c \
		${LIBFT_PATH}ft_isdigit.c \
		${LIBFT_PATH}ft_isalnum.c \
		${LIBFT_PATH}ft_isascii.c \
		${LIBFT_PATH}ft_isprint.c \
		${LIBFT_PATH}ft_strlen.c \
		${LIBFT_PATH}ft_memset.c \
		${LIBFT_PATH}ft_memcpy.c \
		${LIBFT_PATH}ft_memmove.c \
		${LIBFT_PATH}ft_strlcpy.c \
		${LIBFT_PATH}ft_toupper.c \
		${LIBFT_PATH}ft_tolower.c \
		${LIBFT_PATH}ft_strchr.c \
		${LIBFT_PATH}ft_strrchr.c \
		${LIBFT_PATH}ft_strncmp.c \
		${LIBFT_PATH}ft_memchr.c \
		${LIBFT_PATH}ft_memcmp.c \
		${LIBFT_PATH}ft_strnstr.c \
		${LIBFT_PATH}ft_atoi.c 	\
		${LIBFT_PATH}ft_calloc.c \
		${LIBFT_PATH}ft_strdup.c \
		${LIBFT_PATH}ft_substr.c \
		${LIBFT_PATH}ft_strjoin.c \
		${LIBFT_PATH}ft_strtrim.c \
		${LIBFT_PATH}ft_split.c \
		${LIBFT_PATH}ft_itoa.c 	\
		${LIBFT_PATH}ft_strmapi.c \
		${LIBFT_PATH}ft_striteri.c \
		${LIBFT_PATH}ft_putchar_fd.c \
		${LIBFT_PATH}ft_putstr_fd.c \
		${LIBFT_PATH}ft_putendl_fd.c \
		${LIBFT_PATH}ft_putnbr_fd.c \
		${LIBFT_PATH}ft_bzero.c \
		${LIBFT_PATH}ft_strlcat.c \
		${LIBFT_PATH}ft_lstnew.c \
		${LIBFT_PATH}ft_lstadd_front.c \
		${LIBFT_PATH}ft_lstsize.c \
		${LIBFT_PATH}ft_lstlast.c \
		${LIBFT_PATH}ft_lstadd_back.c \
		${LIBFT_PATH}ft_lstdelone.c \
		${LIBFT_PATH}ft_lstclear.c \
		${LIBFT_PATH}ft_lstiter.c \
		${LIBFT_PATH}ft_lstmap.c \
		${LIBFT_PATH}ft_putunbr.c \
		\
		${GET_NEXT_LINE_PATH}get_next_line.c \
		${GET_NEXT_LINE_PATH}get_next_line_utils.c

OFILES = ${FILES:%.c=%.o}

all: ${NAME}

${NAME}: ${OFILES}
	@ar rcs $@ $^
	${RM_LINE}
	${RM_LINE}
	@echo "${GREEN}Done creating ${NAME}${DEF_COLOR}"

%.o : %.c
	@echo "Compiling $< into $@..."
	@${CC} ${CFLAGS} -o $@ -c $<
	${RM_LINE}

clean:
	@echo "Cleaning libft objects"
	@${REMOVE} ${OFILES}

fclean: clean
	@echo "Removing ${NAME}"
	@${REMOVE} ${NAME}

re: fclean all clean

.PHONY: all clean fclean re