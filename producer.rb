require 'bunny'

RABBITMQ_HOST = 'localhost:5672'

connection = Bunny.new(hostname: RABBITMQ_HOST)
connection.start

channel = connection.create_channel

queue = channel.queue('test_queue')


begin
  puts ' [*] Type messages to sent. To exit press CTRL+C'
  while true
    puts '[*] Type your message to sent:'
    message = gets.chomp()
    channel.default_exchange.publish(message, routing_key: queue.name)
    puts " [x] Sent #{message}"
  end
rescue Interrupt => _
  connection.close

  exit(0)
end
