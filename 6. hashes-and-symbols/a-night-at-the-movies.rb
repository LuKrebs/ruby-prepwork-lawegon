#This is a very simple ruby program building with the purpose to working with the core concecpts of the ruby syntax

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

while 1 < 2
  puts "Please, choose one of the following options: "
  puts "-- Enter 'add' to add a new movie in the hash"
  puts "-- Enter 'update' to change the rating from a movie"
  puts "-- Enter 'display' to see all movies in the hash"
  puts "-- Enter 'delete' to delete some movie from the hash"
  puts "-- Or enter 'exit' to exit the program"
  choice = gets.chomp
  choice = choice.downcase
  break if (choice == 'add') || (choice == 'delete') || (choice == 'update') || (choice == 'display') || (choice == 'exit')
end
if choice == 'exit'
  puts "Bye! :)"
else
  case choice
  when "add"
    puts "Please, enter the name of the movie you want to add: "
    title = gets.chomp
    title = title.downcase.capitalize
    title = title.to_sym
    if movies[title].nil?
      puts "Please, rate the movie you've entered: "
      rating = gets.chomp
      rating = rating.to_i
      movies[title] = rating
      puts "Thank you! You add the #{title} with the #{rating} rating!"
    else
      puts "The #{title} movie is already in the hash and its rating is #{movies[title]}"
    end
  when "update"
    puts "Enter the name of the movie you want to add"
    title = gets.chomp
    title = title.downcase.capitalize
    title = title.to_sym
    if movies[title].nil?
      puts "It's not possible to update #{title} because it's not in the hash!"
    else
      puts "Please, enter the update rating of the movie"
      new_rating = gets.chomp
      new_rating = new_rating.to_i
      movies[title] = new_rating
      puts "We got it! The new rating of the #{title} is #{new_rating}"
    end
  when "display"
    movies.each {|a, b| puts "#{a}: #{b}"}
  when "delete"
    puts "What movie do you want to delete?"
    title = gets.chomp
    title = title.downcase.capitalize
    title = title.to_sym
    if movies[title].nil?
      puts "Sorry, but this movie isn't in the hash :( "
    else
      movies.delete(title)
      puts "Got it. The #{title} was deleted from the hash"
    end
  end
end
