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

# Unless check if something is false; the code below will return the first puts
unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

problem = !true
puts "Everything doing well" unless problem
puts ""

# Working with equal or different
is_true = (2 != 3)

is_false = (2 == 3)

# Working with less than or greater than
test_1 = 17 > 16

test_2 = 21 < 30

test_3 = 9 >= 9

test_4 = -11 < 4

# Working with true/false
# test_1 = 77 != 77
test_1 = false

# test_2 = -4 <= -4
test_2 = true

# test_3 = -44 < -33
test_3 = true

# test_4 = 100 == 1000
test_4 = false

# the And operator

# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true

# the Or operator
# boolean_1 = 2**3 != 3**2 || true
boolean_1 = true

# boolean_2 = false || -10 > -9
boolean_2 = false

# boolean_3 = false || false
boolean_3 = false

# The Not operator: ! makes true values false, and vice-versa.
# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false

# Combining Boolean Operators
# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true


puts "Enter a number, please: "
x = Integer(gets.chomp)

if x >= 100
  puts "It's a big number..."
elsif x < 100
  puts "It's number isn't so huge"
else
  puts "This is a number?"
end

# test_1 should be false
test_1 = 8 >= 9

# test_2 = should be false
test_2 = 10 != 10

# test_3 = should be true
test_3 = 20 != 19

# test_1 should be true
test_1 = ( 1 == 1 ) && ( 2 == 2 )

# test_2 = should be true
test_2 = ( 1 == 2 ) || ( 2 == 2 )

# test_3 = should be false
test_3 = ( 1 != 1 ) && ( 2 == 2 )
