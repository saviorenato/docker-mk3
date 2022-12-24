# Recipes
#all: mariadb

#Databases
mariadb:
	@docker-compose -f databases/docker-compose-mariadb.yaml up -d
mariadb-login:
	@docker exec -it mariadb bash
postgres:
	@docker-compose -f databases/docker-compose-postgres.yaml up -d
postgres-login:
	@docker exec -it postgres bash
mongo:
	@docker-compose -f databases/docker-compose-mongo.yaml up -d
mongo-login:
	@docker exec -it mongodb bash

#Redis
redis:
	@docker-compose -f redis/docker-compose-redis-single.yaml up -d
#Kafka
kafka:
	@docker-compose -f kafka/docker-compose-kafka.yaml up -d


#.PHONY: all mariadb 
