# Recipes
all: init

init:
	make mariadb
network:
	@docker network create -d bridge global-default

#Databases
mariadb:
	@docker-compose -f databases/docker-compose-mariadb.yaml up -d
postgres:
	@docker-compose -f databases/docker-compose-postgres.yaml up -d
mongo:
	@docker-compose -f databases/docker-compose-mongo.yaml up -d

#Redis
redis:
	@docker-compose -f redis/docker-compose-redis-single.yaml up -d
#Kafka
kafka:
	@docker-compose -f kafka/docker-compose-kafka.yaml up -d

.PHONY: all 
