ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly


puts ""

luciano = "Full Stack Web Developer"
puts luciano if true

puts ""

am_i_hungry = false
puts "I don't want to eat" unless am_i_hungry

puts ""


# Working with Ternary
pizza = true

puts pizza ? "I want to eat pizza" : "I don't want to eat pizza"

puts ""

# Working with case/when/then
language = "Ruby"
case language
when "JS"
  puts "Websites!"
when "Python"
  puts "Science!"
when "Ruby"
  puts "Web apps!"
else
  puts "I don't know!"
end

puts ""

language_two = "Python"
case language_two
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end

puts ""

puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!
case greeting
when "English" then puts "Hello!"
when "French" then puts "Bonjour!"
when "German" then puts "Guten Tag!"
when "Finnish" then puts "Haloo!"
else puts "I don't know that language!"
end

# Working with conditional assignment
# ~> the ||= only will assign a value for a variable if its still don't have a value!
fbook = nil
puts fbook

fbook ||= "Cat's Cradle"
puts fbook

fbook ||= "Why's (Poignant) Guide to Ruby"
puts fbook

fbook = "Why's (Poignant) Guide to Ruby"
puts fbook

puts ""

favorite_language ||= "Ruby"
puts favorite_language

puts ""

# Implicit return: Ruby return the last evaluated expression

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#only will put out the even numbers in the array
my_array.each {|x| puts x if x % 2 == 0 }

#Working with .upto / .downto
"L".upto("P") {|a| puts a }
puts ""
95.upto(100) {|a| puts a }

#working with .respond_to?(:method here)
age = 26
age.respond_to?(:next)

#add itens in the end of the array
alphabet = ["a", "b", "c"]
alphabet.push("d") # Update me!

caption = "A giraffe surrounded by "
caption += "weezards!" # Me, too!

#Shovel way
alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!

puts ""
# Interpolation
favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end

#Refactoring multiple lines of code
puts "Refactoring multiple lines of code"
puts "One is less than two!" if 1 < 2
puts 1 < 2 ? "One is less than two!" : "One is not less than two."
puts ""

puts "What's your favorite language?"
language = gets.chomp

case language
when "Ruby" then puts "Ruby is great for web apps!"
when "Python" then puts "Python is great for science."
when "JavaScript" then puts "JavaScript makes websites awesome."
when "HTML" then puts "HTML is what websites are made of!"
when "CSS" then puts "CSS makes websites pretty."
else puts "I don't know that language!"
end

# Implicit Return
def square(n)
  n ** 2
end

puts ""

# Refactoring for loop into .times
3.times do
  puts "I'm a refactoring master!"
end
