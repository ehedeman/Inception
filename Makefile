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
	cat /home/marlon/Inception_pws/whoops_its_a_password >> srcs/.env
	docker-compose -f ./srcs/docker-compose.yaml up -d

down :
	docker-compose -f ./srcs/docker-compose.yaml down
	rm srcs/.env

stop:
	docker-compose -f ./srcs/docker-compose.yaml stop

start: build
	docker-compose -f ./srcs/docker-compose.yaml start

status:
	docker ps

build:
	cat /home/marlon/Inception_pws/whoops_its_a_password >> srcs/.env
	docker-compose -f ./srcs/docker-compose.yaml up --build -d

re: down start

.PHONY: all up down stop start status re
