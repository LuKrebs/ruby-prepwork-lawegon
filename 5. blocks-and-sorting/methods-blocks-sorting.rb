# Creating a method that define if a number is prime or not

def prime(n)
  puts "That is not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(97)
puts ""

# Training with methods
def puts_1_to_10
  (1...11).each {|x| puts x}
end

puts_1_to_10

puts ""
puts ""

def greeting
    puts "Hello! :)"
end

puts ""
puts ""

def array_of_10
  puts (1..10).to_a
end

array_of_10

puts ""
puts ""

def square(n)
  puts n ** 2
end

def cubertino(n)
  puts n ** 3
end

puts "Calling square method with 2 as a parameter"
square(2)
puts ""

puts "Calling cubertino method with 2 as a parameter"
cubertino(2)

# Working with splat arguments
def what_up(greeting, *bros) # the " * " tells Ruby: It could be more than one argument
  bros.each {|x| puts "#{greeting}, #{x}"}
end

what_up("Hey", "Mari", "Léo", "Soninha")

# Learning return
def add(n, m)
   return n + m
end

puts add(5, 3)

# Training define methods
def greeter(name)
   return "Hello, #{name}"
end

def by_three?(number)
   if number % 3 == 0
       return true
   else
       return false
   end
end

1.times do
  puts "I'm a block of code!"
end

1.times {puts "as am I!"}

# How blocks differ from methods

def capitalize(string)
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("luciano")
capitalize("mariana")

puts ""

["luciano", "mariana"].each {|x| puts "#{x[0].upcase}#{x[1..-1]}"}

# Using code blocks
[1, 2, 3, 4, 5].each {|i| puts i }

puts ""

[1, 2, 3, 4, 5].each {|i| puts i * 5 }

puts ""

# Introduction to Sorting
my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
puts "My array: "
puts my_array

puts "Sorting my array with .sort!"
my_array.sort!
puts my_array

puts ""
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
books = books.sort! # ~> Sorting in the alphabetical order
puts books

# The Combined Comparison Operator
book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

puts book_1 <=> book_2


#Sorting both ascending order and descending order
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |x, y| x <=> y }

# Sort your books in descending order, in-place below
books.sort! {|x, y| y <=> x}

puts ""
puts ""

# Quickly review ~> methods
def welcome
  puts "Welcome to Ruby!"
end
#adding a argument and the return
def welcome(name)
  return "Hello, #{name}"
end

# Quickly review ~> blocks
my_array = [1, 2, 3, 4, 5]

my_array.each {|x| puts x * x }
puts ""
my_array.each do |z|
  puts z * z
end

puts ""

#Quickly review ~> sorting
fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits = fruits.sort! {|a, b| b <=> a}

puts fruits
