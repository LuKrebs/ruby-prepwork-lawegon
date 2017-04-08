# Creating arrays
my_array = ["Luciano", 1, 6, "apple"]

# Access by Index
print my_array[3] # ~> "apple"

# Arrays of arrays
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }

puts "----------------------"
puts ""

my_2d_array = [[1, 2, 3, 4], [5, 6, 7, 8]]

my_2d_array.each {|x| puts "#{x}\n"}

puts "----------------------"
puts ""

# Introduction to Hashes
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

languages.each {|x| puts x}
puts ""
