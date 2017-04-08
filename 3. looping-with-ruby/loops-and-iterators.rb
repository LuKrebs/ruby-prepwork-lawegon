# The while Loop
puts ""
puts "----------------------"
puts ""
counter = 1
while counter < 11
  puts counter
  counter += 1
end
puts ""
puts "----------------------"
puts ""

i = 0
while i < 5
  puts i
  # Add your code here!
  i += 1
end
puts ""
puts "----------------------"
puts ""

# The Until loop
counter = 1
until counter > 10
  puts counter
  # Add code to update 'counter' here!
  counter += 1
end
puts ""
puts "----------------------"
puts ""

# The for loop
# this code will print both 1 and 10
# it tells ruby to "include the highest number in the range"
for num in 1..10
  puts num
end
puts ""
puts "----------------------"
puts ""

# this code will print 1 until 9. Don't will print 10
# it tells ruby to "Exclude the final numbers"
for num in 1...10
  puts num
end
puts ""
puts "----------------------"
puts ""

# ~> including the first and the last numbers
for num in 1..15
  puts num
end
puts ""
puts "----------------------"
puts ""

# ~> Write a for loop that puts the numbers 1 to 20, including 20, using either .. or ....
for x in 1..20
  puts x
end
puts ""
puts "----------------------"
puts ""

# The loop method
i = 20
loop do
  i -= 1
  puts "#{i}"
  break if i <= 0
end
puts ""
puts "----------------------"
puts ""

# Working with next
i = 20
loop do
  i -= 1
  next if i % 2 != 0
  puts "#{i}"
  break if i <= 0
end
puts ""
puts "----------------------"
puts ""

# Arrays
my_array = [1, 2, 3, 4, 5]

# ~> .each iterator
my_array.each do |y|
  y *= 10
  puts "#{y}"
end
puts ""
puts "----------------------"
puts ""

odds = [1,3,5,7,9]
# Add your code below!
odds.each do |a|
    a *= 2
    print "#{a}"
end
puts ""
puts "----------------------"
puts ""

5.times {print "I'm almost a full stack web developer"}
puts ""
puts "----------------------"
puts ""

# while loop training
x = 1
while x <= 50 do
    print x
    x += 1
end

# until loop training
puts ""
puts "----------------------"
puts ""
y = 1
until y == 51 do
  print y
  y += 1
end

# for loop training
puts ""
puts "----------------------"
puts ""
for n in 1..50
  print n
end

# looo do break training
puts ""
puts "----------------------"
puts ""
m = 0
loop do
    print "Ruby!"
    m += 1
    break if m == 30
end

# ~> .times training
puts ""
puts "----------------------"
puts ""
30.times {print "Ruby!"}
