# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmuamba <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/22 16:17:11 by mmuamba           #+#    #+#              #
#    Updated: 2018/06/04 17:31:39 by mmuamba          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

HEADER =	libft.h

NAME = 		libft.a

SRC = 		ft_strlen.c ft_atoi.c ft_putchar_fd.c ft_putchar.c ft_putstr_fd.c\
			ft_putstr.c ft_memcmp.c ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strstr.c\
			ft_strdup.c ft_putnbr.c ft_putnbr_fd.c ft_strclr.c ft_strcat.c ft_strcpy.c\
			ft_strncpy.c ft_isalnum.c ft_isalpha.c ft_isprint.c ft_isdigit.c ft_isspace.c\
			ft_isascii.c ft_toupper.c ft_tolower.c ft_striter.c ft_strmap.c ft_strnew.c\
			ft_memset.c ft_bzero.c ft_memalloc.c ft_memdel.c ft_memcpy.c ft_memmove.c\
			ft_memccpy.c ft_memchr.c ft_strcmp.c ft_strncmp.c ft_putendl.c ft_putendl_fd.c\
			ft_strdel.c ft_striteri.c ft_strmapi.c ft_strncat.c ft_strequ.c ft_strnequ.c\
			ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strlcat.c ft_itoa.c ft_strsplit.c\
			ft_strlenc.c

OBJS = 	*.o

FLAGS = 	-Wall -Wextra -Werror

CC = 		gcc

all : 	$(NAME)
	
$(NAME):
		$(CC) $(FLAGS) -c $(SRC)
		ar rc $(NAME) $(OBJS)
		ranlib $(NAME)

clean: 
		rm -rf $(OBJS)
fclean:	clean
		rm -f $(NAME)

re: 	fclean all
