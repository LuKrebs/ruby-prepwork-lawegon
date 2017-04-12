# Learning private and public methods

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  public # this method can be called from outside the class

  def about_me
    puts "I'm #{@name} and I'm #{@age} yearls old!"
  end

  private # this method can't!!

  def bank_account_number
    @account_number = 12345
    puts "My bank account numer is #{@account_number}"
  end
end

eric = Person.new("Eric", 26)
eric.about_me # this method works normally
# eric.bank_account_number ~> It'll cause an error because its not public

puts ""


# Quick review: How to create a class
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public

  def bark
    puts "Woof!"
  end

  private

  def id
    @id_number = 12345
  end
end


# Learnig attr_reader and attr_writer
class MySecondPerson
  attr_reader :name
  #attr_reader :job
  #attr_writer :job
  attr_accessor :job # ~> If I want to make a variable readable and writeable, I can use attr_accessor!

  def initialize(name, job)
    @name = name
    @job = job
  end
end

# Learning how module works. Here's an example of module
module Circle

  PI = 3.141592653589793

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end

end

# Creating my own module
module MyLibrary
  FAVE_BOOK = "abundece"
end

# Acessing constants inside of a module
puts Math::PI

puts ""

# Learning how to require modules
require 'date'
puts Date.today

puts ""

# Working with include to use methods inside a variable without need to use a syntax like this 'Math::PI'
class Angle
  include Math
  attr_accessor :radians

  def initialize(radians)
    @radians = radians
  end

  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
puts acute.cosine

puts ""

# The Marriage of Modules ~> mixin between class and modules
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

puts ""

# Training mixins between module and classes with include
module MartialArts
  def swordsman
    puts "I'm a swordsman."
  end
end

class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
  include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

# Extend key-word ~> It allow the class itself make use of the methods of some module

module ThePresent
  def now
    puts "It's #{Time.new.hour  > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now

puts ""

# Review of public and private methods
class Application
  attr_accessor :status
  def initialize; end

  public

  def print_status
    puts "All systems go!"
  end

  private

  def password
    return 12345
  end
end

# Review modules
module Languages
  FAVE = "Ruby"
end

class Master
  include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory
