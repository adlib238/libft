# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kfumiya <kfumiya@student.42tokyo.jp>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/08 17:03:43 by kfumiya           #+#    #+#              #
#    Updated: 2023/01/19 16:48:13 by kfumiya          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = 	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c\
		ft_isascii.c ft_isdigit.c ft_isprint.c\
		ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memset.c\
		ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c\
		ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c\
		ft_tolower.c ft_toupper.c\
		ft_substr.c ft_putnbr_fd.c ft_putchar_fd.c ft_itoa.c ft_strjoin.c\
		ft_putendl_fd.c ft_putstr_fd.c ft_split.c ft_strtrim.c ft_strmapi.c\
		ft_lstsize.c ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c\
		ft_lstdelone.c ft_lstiter.c ft_lstlast.c ft_lstmap.c ft_lstnew.c\
		ft_atoll.c ft_intlen.c ft_strsub.c ft_strnew.c ft_in_set.c\
		get_next_line.c get_next_line_utils.c

SRCDIR = 	srcs
OBJDIR = 	objs

OBJ = 		$(SRC:.c=.o)

SRCS = 		$(addprefix $(SRCDIR)/, $(SRC))
OBJS = 		$(addprefix $(OBJDIR)/, $(OBJ))

CC = 		gcc
CFLAGS =	-Wall -Werror -Wextra

INCLUDES =	-I includes
RM =		rm -rf

NAME =		libft.a

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<

all: $(NAME)

$(NAME): $(OBJS)
	ar -rc $(NAME) $(OBJS)

clean:
	$(RM) $(OBJDIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re