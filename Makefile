# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    MakeFile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sanghpar <sanghpar@student.42seoul.kr>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/03 00:06:37 by sanghpar          #+#    #+#              #
#    Updated: 2021/02/03 00:37:35 by sanghpar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

FLAGS = -Wall -Wextra -Werror

FILES = \
		ft_strlen \
		ft_write \
		ft_strcpy \
		ft_strcmp \
		ft_read \
		ft_strdup

SRCS = $(addprefix srcs/, $(addsuffix .s, $(FILES)))
OBJS = $(addsuffix .o, $(FILES))

all : $(NAME)

$(NAME) : $(OBJS)
		ar rcs $(NAME) $(OBJS)

$(OBJS) : 
		$(foreach file, $(FILES), nasm -f macho64 srcs/$(file).s -o $(file).o;)

clean :
		rm -f $(OBJS)

fclean : clean
		rm -f $(NAME)

re : fclean all
