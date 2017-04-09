# Creating arrays
my_array = ["Luciano", 1, 6, "apple"]

# Access by Index
puts my_array[3] # ~> "apple"

puts "----------------------"
puts ""

# Arrays of arrays
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }

puts "----------------------"
puts ""

# Using do instead of {}. p.s: I'll need to code "end" in the end of the block
multi_d_array.each do |x|
  puts "#{x}"
end

puts "----------------------"
puts ""


my_2d_array = [[1, 2, 3, 4], [5, 6, 7, 8]]

my_2d_array.each {|x| puts "#{x}\n"}

puts "----------------------"
puts ""
# Using do instead of {}. p.s: I'll need to code "end" in the end of the block
my_2d_array.each do |x|
  puts "#{x}"
end

puts "----------------------"
puts ""

# Introduction to Hashes: key/value pair
my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

puts "----------------------"
puts ""

# Using Hash.new
# p.s: the word "Hash" must be capitalized
pets = Hash.new

pets["Grachinski's"] = "nalinha"
puts pets["Grachinski's"]
puts pets # ~> It'll display on the screen the entire Hash

puts "----------------------"
puts ""

# Iterating with .each over an Hash

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}
puts "Family hash"
family.each {|x, y| puts "#{x}: #{y}"}

puts ""
puts "Friends array"
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
friends.each {|x| puts "#{x}"}

# Iterating Over Arrays
languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

puts ""
puts "Languages:"
languages.each {|x| puts x}
puts ""

# Iterating over hashes
restaurant_menu = {
  "noodles" => 4,
  "soup" => 3,
  "salad" => 2
}

puts "Restaurant menu: "
restaurant_menu.each {|item, price| puts "#{item}: #{price}"}

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
puts ""
puts "Secret identities: "
secret_identities.each {|hero, fake_name| puts "#{hero}: #{fake_name}"}

# Multidimensional array training
my_array = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]

# Hash training
my_hash = {
 "Tesla" => "S model",
 "Tesla" => "Eletric car"
}

# Puts out only the values of a hash, not the key
lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each {|name, lunch| puts "#{lunch}"}
