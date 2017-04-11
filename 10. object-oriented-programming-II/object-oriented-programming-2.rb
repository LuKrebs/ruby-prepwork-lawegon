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
  attr_accessor: job # ~> If I want to make a variable readable and writeable, I can use attr_accessor!

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
