# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jjourdan <jjourdan@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/22 10:55:11 by jjourdan          #+#    #+#              #
#    Updated: 2021/06/03 11:21:44 by jjourdan         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# *******************************    POST-IT    ****************************** #
#                                                                              #
#			## $@ 	Le nom de la cible										   #
#			## $< 	Le nom de la première dépendance						   #
#			## $^ 	La liste des dépendances								   #
#			## $? 	La liste des dépendances plus récentes que la cible		   #
#			## $* 	Le nom du fichier sans suffixe							   #
#                                                                              #
# **************************************************************************** #


NAME		=	my_project

RM			=	rm -f

SRCS_DIR	=	srcs/

SRCS		=	run.sh

SRCS_FULL	=	$(addprefix $(SRCS_DIR), $(SRCS))

all:
				./$(SRCS)

clean:
				docker-compose stop

fclean:
				docker compose down

re:				fclean all

.PHONY: all, libs, norme, norme_check, debug, valgrind, leaks, clean, fclean, re