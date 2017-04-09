# Little review with blocks:
5.times do
  puts "I'm a block!"
end

puts ""

# Working with .collect method
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

doubled_fibs = fibs.collect {|z| z * 2}

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


def greeter
   yield
end

phrase = Proc.new {puts "Hello there!"}

greeter(&phrase)

#Working with .call method
hi = Proc.new {puts "Hello!"}

hi.call
