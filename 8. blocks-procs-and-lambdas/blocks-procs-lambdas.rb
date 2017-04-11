# Little review with blocks:
5.times do
  puts "I'm a block!"
end

puts ""

# Working with .collect method
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

doubled_fibs = fibs.collect {|z| z * 2 }
puts doubled_fibs
puts ""

# Learning to Yield
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

puts ""

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

puts ""

def double(a)
  yield(a)
end

puts double(5) {|a| a * 2}

puts ""

# Learning Proc
multiples_of_3 = Proc.new do |z|
  z % 3 == 0
end

puts (1..10).to_a.select(&multiples_of_3)

puts ""

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new {|z| z.floor}
ints = floats.collect(&round_down)

print floats
puts ""
print ints

cube = Proc.new { |x| x ** 3 }
x = [1,2,3,4,5,6]
x_cube = x.collect(&cube)

puts ""
puts ""
print x
puts ""
print x_cube
puts ""
puts ""

def greeter
   yield
end

phrase = Proc.new {puts "Hello there!"}

greeter(&phrase)

#Working with .call method
hi = Proc.new {puts "Hello!"}

hi.call

puts ""

# ~> Converting an array of integers to an array of strings
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
string_array = numbers_array.collect(&:to_s)

# p.s: the method map also work in the same way
string_array_two = numbers_array.map(&:to_s)

print string_array
puts ""
print string_array_two
puts ""
puts ""

# The ruby lambda
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

puts lambda_demo(lambda {puts "I'm the lambda"})

puts ""

# lambda syntax
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda {|a| a.to_sym}
symbols = strings.collect(&symbolize)

print symbols

puts ""
puts ""

# Understanding the return's difference between procs and lambdas
def batman_ironman_proc
  victor = Proc.new {return "Batman will win!"}
  victor.call
  "Ironman will win!"
end
# ~> Proc return return the immediately withou return to the method
puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!"}
  victor.call
  "Iroman will wil!"
end
# ~> lambda, different than proc, going back to the method and return the last statemnt
puts batman_ironman_lambda

puts ""

# Writing my owm lambda
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
my_lam = lambda {|a| a.is_a? Symbol}

symbols = my_array.select(&my_lam)

print symbols

puts ""

# Training procs, lambdas and blocks

# ~>1. there's a array with different kinds of data: integers, symbols, strings...
# write a piece of code that only will return the integers

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

int_lambda = lambda {|a| a.is_a? Integer}
integers_array = odds_n_ends.select(&int_lambda)
print integers_array

puts ""
# Creating a proc that checks is a number is under than 100
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new {|a| a < 100}
youngsters = ages.select(&under_100)

print youngsters

puts ""
puts ""
# Creating a lambda that checks is a value comes after that the Letter 'M'
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda {|a, b| b < "M"}
a_to_m = crew.select(&first_half)

puts a_to_m

puts ""
