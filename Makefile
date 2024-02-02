# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aadamik <aadamik@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/01 23:56:11 by aadamik           #+#    #+#              #
#    Updated: 2024/02/01 23:59:41 by aadamik          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line
SRC = get_next_line_utils.c get_next_line.c\

all: $(NAME) 

$(NAME): 
	$(CC) -Wall -Wextra -Werror -c  $(SRC)
	ar rc $(NAME) *.o
	rm -f *.o

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re:	fclean all