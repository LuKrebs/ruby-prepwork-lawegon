print "Integer please: "
user_num = Integer(gets.chomp) #If the user enter a non-integer value, the code will broke

if user_num < 0
  puts "You picked a negative integer"
elsif user_num > 0
  puts "You picked a positive integer"
else # here there is no condition
  puts "You picked zero!"
end

# This code will execute the block. an "!" before the object change the value of the object
if !true == false
    puts "hello again"
end

# Working with unless
hungry = false

# Unless check if something is false; this code will return the first puts
unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

# Working with equal or different
is_true = (2 != 3)

is_false = (2 == 3)

# Working with less than or greater than
test_1 = 17 > 16

test_2 = 21 < 30

test_3 = 9 >= 9

test_4 = -11 < 4
