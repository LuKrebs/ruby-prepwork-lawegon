# Defining a method that both sorting in the ascending and descending order
def alphabetize(arr, rev=false) #two arguments, and the default value for the rev argument is false
  if rev
    arr.sort {|x, y| y <=> x}
  else
    arr.sort {|x, y| x <=> y}
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
puts "First alphabetize method"
puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"
puts ""

def alphabetize_two(arr, rev=false)
  if rev
    arr.sort!
    arr.reverse!
  else
    arr.sort!
  end
end

puts "Second alphabetize method"
puts "A-Z: #{alphabetize_two(books)}"
puts "Z-A: #{alphabetize_two(books, true)}"
puts ""
