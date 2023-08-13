Run a container with RabbitMQ
```
$ docker run -it -p 5672:5672 rabbitmq:3-management
```

Run the producer
```
$ ruby producer.rb
```

Run the consumer
```
$ ruby consumer.rb
```
