# Review the ways to creat Hashes

my_hash = {"banana" => "Valeu for the unique item of the my_hash"}

my_second_hash = Hash.new

puts my_hash["banana"]

# Iterating over Hashes

puts ""
puts ""

matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each {|a, b| puts "#{b}"}

#Creating a new hash and set the default value for something different than nill

no_nill_hash = Hash.new("Different than nill") # ~> Different than nill will be the default value

# Start to work with symbols
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}
puts ""
puts ""


puts "id for the string 'name'"
puts "name".object_id # ~> the id of the strings will not be the same
puts ""
puts "id for the string 'name'"
puts "string".object_id

puts "id for the symbol :symbol"
puts :symbol.object_id # ~> symols are the same object
puts ""
puts "id for the symbol :symbol"
puts :symbol.object_id

# Creating a symbol
my_first_symbol = :learning_symbols

symbol_hash = {
  :one => 1,
  :two => 2,
  :three => 3,
}

puts ""
puts ""
# Converting between symbols and strings
# to.s ~> convert to string
# to.sym ~> convert to symbol
# .intern ~> also convert to symbol; internalize the string into a symbol

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
symbols_two = []

strings.each {|a| symbols.push(a.to_sym)}
strings.each {|a| symbols_two.push(a.intern)}

puts symbols
puts ""
puts symbols_two

puts ""
puts ""

# using hash rocket, the old syntax
movies = {
 :matrix => "The best",
 :em_busca_da_felicidade => "Very good movie"
}

# using the new syntax to declare a symbol
cars = {
  fiat: "uno",
  tesla: "s model"
}

puts cars
puts ""
puts movies


puts ""
puts ""
# Filtering hashes using .select
grades = { alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

x = grades.select {|x, y| y > 97}
y = grades.select {|x, y| x == :alice}

puts x
puts y

puts ""
puts ""

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select {|a, b| b > 3}

# Working with .each_key and .each_value
my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }
# ==> one two three

my_hash.each_value { |v| print v, " " }
# ==> 1 2 3
puts ""
puts ""

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

movie_ratings.each_key {|a| puts a}
