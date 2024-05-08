# Recipes
all: init

init:
	make mariadb
network:
	@docker network create -d bridge global-default

portainer:
	@./.make/docker-compose-cmd.sh -f container-visibility/docker-compose-portainer.yaml up -d

#Databases
mariadb:
	@./.make/docker-compose-cmd.sh -f databases/docker-compose-mariadb.yaml up -d
mysql:
	@./.make/docker-compose-cmd.sh -f databases/docker-compose-mysql.yaml up -d
postgres:
	@./.make/docker-compose-cmd.sh -f databases/docker-compose-postgres.yaml up -d
mongo:
	@./.make/docker-compose-cmd.sh -f databases/docker-compose-mongo.yaml up -d

#ElasticSearch
elasticsearch:
	@./.make/docker-compose-cmd.sh -f elasticsearch/docker-compose-cluster.yaml up -d
cerebro:
	@./.make/docker-compose-cmd.sh -f elasticsearch/docker-compose-cerebro.yaml up -d

#Redis
redis-single:
	@./.make/docker-compose-cmd.sh -f redis/docker-compose-redis-single.yaml up -d
redis-cluster:
	@./.make/docker-compose-cmd.sh -f redis/docker-compose-cluster.yaml up -d
redis-insight:
	@./.make/docker-compose-cmd.sh -f redis/docker-compose-insight.yaml up -d

kafka:
	@./.make/docker-compose-cmd.sh -f kafka/docker-compose-kafka.yaml up -d

#Mock
mock:
	@./.make/docker-compose-cmd.sh -f mock/docker-compose.yaml up -d

#AWS
aws-sqs:
	@./.make/docker-compose-cmd.sh -f aws/docker-compose-sqs.yaml up

.PHONY: all 
