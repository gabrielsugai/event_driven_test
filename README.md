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

![image](https://github.com/gabrielsugai/event_driven_test/assets/26432843/97d5fd25-a72f-462f-ba89-f6c02d0d54c4)
