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
	docker-compose -f ./srcs/docker_compose.yaml up -d

down :
	docker-compose -f ./srcs/docker_compose.yaml down

stop:
	docker-compose -f ./srcs/docker_compose.yaml stop

start:
	docker-compose -f ./srcs/docker_compose.yaml start

status:
	docker ps

build:
	docker-compose -f ./srcs/docker_compose.yaml up --build -d
	docker-compose -f ./srcs/docker_compose.yaml start
.PHONY: all up down stop start status
