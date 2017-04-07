print "What's your first name?"
x = gets.chomp # ~> gets: open an input to the user and also creat a new blank line / chomp: don't creat a new line
x.capitalize!

print "What's your last name?"
y = gets.chomp
y.capitalize!

print "What city are you from?"
city = gets.chomp
city.capitalize!

print "What state or province are you from?"
state = gets.chomp
state.upcase!

# string interpolation
puts "Your name is #{x} #{y} and you are from #{city}, #{state}!"
