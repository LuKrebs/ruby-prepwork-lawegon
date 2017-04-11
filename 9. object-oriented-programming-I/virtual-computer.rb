class Machine
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end

  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

puts ""
my_machine.create("groceries.txt")
puts ""
your_machine.create("todo.txt")
puts ""
puts "Users: #{Machine.get_users}"

class Computer
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "The user #{@username} created a #{filename} at #{time}"
  end

  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new("Lu", 123456)
