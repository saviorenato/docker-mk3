# Docker/PHP Mark 3

## Portainer (Container)
make portainer

*nao precisa instalar e sim executar o container

## Redis 
make redis-single
make redis-cluster

Redis Insight
make redis-insight 

Redis Insight - http://0.0.0.0:8001/
Connection {
    Host: redis-node-0
    Port: 6379
    Name: redis-cluster
    Username: default
    Password: redis
}

## Kafka
make kafka

Kafka - http://0.0.0.0:8080/

## MongoDB
make mongo

MongoDB - http://0.0.0.0:8081/

## ElasticSearch
make elasticsearch
ElasticSearch - http://0.0.0.0:9200/
Kibana - http://0.0.0.0:5601/

## Cerebro
make cerebro

Cerebro - http://0.0.0.0:9000/

Para começar usar é simples, basta colocar o endereço do ElasticSearch, no nosso caso o nome do container e a porta: http://es01:9200.

## Databases
make mariadb
make mysql
make postgres
Para gerenciar o Postgres, o pgAdmin estará disponível em http://0.0.0.0:5050/

## Mock
make mock
Após subir os containers, a UI estará disponível em: http://0.0.0.0:1080/mockserver/dashboard, e caso você não tenha alterado o arquivo de configurações, a rota de testes será: http://0.0.0.0:1080/hello

## AWS SQS
make aws-sqs

Port: 4566
O LocalStack também sobre uma rota de heath check, que fica disponível em https://0.0.0.0:4566/health

Criando uma fila no SQS:
aws --endpoint-url=http://0.0.0.0:4566 sqs create-queue --queue-name my-queue

Para verificar se a fila foi criada com sucesso utilize o comando:
aws --endpoint-url=http://0.0.0.0:4566 sqs list-queues

Agora enviaremos uma mensagem para a fila que criamos:
aws --endpoint-url=http://0.0.0.0:4566 sqs send-message --queue-url http://0.0.0.0:4566/000000000000/my-queue --message-body 'Hello SQS World'

Para ler a mensagem que acabamos de criar:
aws --endpoint-url=http://0.0.0.0:4566 sqs receive-message --queue-url http://0.0.0.0:4566/000000000000/my-queue
