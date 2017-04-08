# Building the Daffy Duckifier
print "Thtring, pleathe!: "
# Open the input for the user
x = gets.chomp
x.downcase! # variable modified in place!

# ~> .include? will return true if the expression after the method match with some string insthe the variable
if x.include? "s"
  x.gsub!(/s/, "th") # ~> gsub: global substitution. first paramereter: regex. second paramereter: what I want to subistitute
else
  puts "Nothing to do here!"
end

puts "Your string is: #{x}"
