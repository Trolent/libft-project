# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: trolland <trolland@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/30 12:40:59 by trolland          #+#    #+#              #
#    Updated: 2023/11/08 08:45:09 by trolland         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libft.a
CC=cc
CFLAGS= -Wall -Wextra -Werror

# ---------------------------------------------------------------------------- #
# ----------------------------------- SRCS ----------------------------------- #
# ---------------------------------------------------------------------------- #
SRC= ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
	ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c \
	ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
	ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c \
	ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c \
	ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c \
	ft_tolower.c ft_toupper.c

# ---------------------------------------------------------------------------- #
# ----------------------------------- BONUS ---------------------------------- #
# ---------------------------------------------------------------------------- #
BONUS= ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
	ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
	ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJ= $(SRC:.c=.o)
OBJ_BONUS= $(BONUS:.c=.o)
HEADER= ./


all : $(NAME)

%.o : %.c
	$(CC) -I $(HEADER) -c $^ $(CFLAGS) -o $@

$(NAME) : $(OBJ)
	ar rc $(NAME) $(OBJ)

so:
	$(CC) -fPIC $(CFLAGS) $(SRC) -shared -o libft.so $(OBJ_BONUS)

bonus : $(OBJ) $(OBJ_BONUS)
	ar rc $(NAME) $(OBJ) $(OBJ_BONUS)

clean :
	rm -rf $(OBJ) $(OBJ_BONUS)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY: all clean fclean re bonus
