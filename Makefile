# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ehedeman <ehedeman@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/12 13:23:52 by ehedeman          #+#    #+#              #
#    Updated: 2025/05/12 13:25:40 by ehedeman         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: up

up:
	docker-compose -f ./srcs/docler-compose.yml up -d

down :
	docker-compose -f ./srcs/docker-compose.yml down

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

start:
	docker-compose -f ./srcs/docker-compose.yml start

status:
	docker ps

.PHONY: all up down stop start status