# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ehedeman <ehedeman@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/12 13:23:52 by ehedeman          #+#    #+#              #
#    Updated: 2025/05/15 13:27:18 by ehedeman         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: up

up:
	cat /home/marlon/Inception/secrets/whats_that_a_password.txt >> srcs/.env
	docker-compose -f ./srcs/docker-compose.yml up -d

down :
	docker-compose -f ./srcs/docker-compose.yml down
	cat /home/marlon/enviroment.txt > srcs/.env

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

start: build
	docker-compose -f ./srcs/docker-compose.yml start

status:
	docker ps

build:
	cat /home/marlon/Inception/secrets/whats_that_a_password.txt >> srcs/.env
	docker-compose -f ./srcs/docker-compose.yml up --build -d

re: down start

.PHONY: all up down stop start status re
