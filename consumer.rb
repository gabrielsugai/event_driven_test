require 'bunny'

RABBITMQ_HOST = 'localhost:5672'

connection = Bunny.new(hostname: RABBITMQ_HOST)
connection.start

channel = connection.create_channel
queue = channel.queue('test_queue')

begin
  puts ' [*] Waiting for messages. To exit press CTRL+C'
  queue.subscribe(block: true) do |_delivery_info, _properties, body|
    puts " [x] Received #{body}"
  end
rescue Interrupt => _
  connection.close

  exit(0)
end
