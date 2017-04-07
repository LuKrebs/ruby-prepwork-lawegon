print "What's your first name?"
x = gets.chomp
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

puts "Your name is #{x} #{y} and you are from #{city}, #{state}!"
