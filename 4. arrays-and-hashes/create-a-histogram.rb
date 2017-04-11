puts "Text please: " #greet the user and ask a text
text = gets.chomp #store the text in a variable called "text"

words = text.split(" ") # making the user's text into an array split by space (" ")
frequencies = Hash.new(0) # creating a new empty hash, with a default return value of 0
words.each {|word| frequencies[word] += 1} # each time a word repeat in the text, the value pair in the hash increase 1
frequencies = frequencies.sort_by {|a, b| b } # sorting by the value pair in the ascending order
frequencies.reverse! # resorting by the descending order
frequencies.each {|word, frequency| puts word + " " + frequency.to_s } #put out the key/value pair separeted by a space
