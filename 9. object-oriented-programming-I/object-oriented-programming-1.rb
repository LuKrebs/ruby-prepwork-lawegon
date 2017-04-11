class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end

  def description
    puts "I'm #{@name} and I was created by #{@creator}"
  end
end

ruby_language = Language.new("Ruby", "Yukihiro")
python_language = Language.new("Python", "Guido")
js_language = Language.new("JavaScript", "Eich")

ruby_language.description
python_language.description
js_language.description

puts ""
puts ""
# Creating my first class
class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

matz = Person.new("Yukihiro")

puts matz.name

puts ""
puts ""

class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}

  def initialize(username, password)
    @username = username
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files
    @@files
  end
end

# Make a new Computer instance
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
puts "Manufacturer: #{$manufacturer}"
puts "Files: #{Computer.display_files}"

#  $ ~> global variable
#  @ ~> instance variable
#  @@ ~> class variable

puts ""
puts ""

# Learn the scope of a global variable
my_global_variable = "I'm out of the class"

class Luciano
  $my_second_global_variable = "I'm inside of the class :)"
end

puts my_global_variable
puts $my_second_global_variable

puts ""
puts ""

class SecondPerson
  def initialize(name, age, profession)
    @name = name
    @age = age
    @profession = profession
  end
end

class TrainingPeopleCounter
  @@peoplecounter = 0

  def initialize(name)
    @name = name
    @@peoplecounter += 1
  end

  def self.number_of_instances
    @@peoplecounter
  end

end

lu = TrainingPeopleCounter.new("Luciano")
ma = TrainingPeopleCounter.new("Mari")

puts "Number of Person instances: #{TrainingPeopleCounter.number_of_instances}"


#This is a piece of the Rails source code!
def create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error
  record
end


puts ""

# Learning the inheritance concept

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

# Note that we don't define the display_error method in the body of SuperBadError,
# but it will still have access to that method via inheritance.

err = SuperBadError.new
err.display_error

puts ""

# Trainig with inheritance
class Application
  def initialize(name)
    @name = name
  end
end

class MyApp < Application
end

# Override methods within classes

class Creature
  def initialize(name)
    @name = name
  end

  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight
    return "Breathes fires!!"
  end
end
