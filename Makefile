# Recipes
all: init
init:
	@docker-compose up -d
build:
	@docker-compose up -d --build
docker-login:
	@docker exec -it mariadb bash

.PHONY: all init 
