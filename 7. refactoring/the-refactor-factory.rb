$VERBOSE = nil
require 'prime'

# This method return the n first prime numbers using Ruby 1.8
def first_n_primes(n)
  # unless n.is_a? Integer
  #   return "n must be an integer."
  # end
  "n must be an integer." unless n.is_a? Integer # Refactoring the lines 7,8 and 9 in just one line of code

  # if n <= 0
  #   return "n must be greater than 0."
  # end
  "n must be greater than 0." if n <= 0 # Refactoring the lines 11,12 and 13 in just one line of code

  # prime_array = [] if prime_array.nil?  # ~~>this line of code work in the same way of the line below
  prime_array ||= []

  prime = Prime.new
  # for num in (1..n)
  #   prime_array.push(prime.next)
  # end

  # Refactoring the for statment in the lines 20,21 and 22 into a .times loop
  n.times do
    prime_array << prime.next # changing the .push method to Shovel
  end

  prime_array
end

puts first_n_primes(5)

# This new method return the n first prime numbers using Ruby 1.9
def first_n_primes_new(n)
  #Checking the correct input
  "n must be an integer" unless n.is_a? Integer
  "n must be greater than 0" if n <= 0

  # The Ruby 1.9 Prime class makes the array automatically!
  prime = Prime.new
  prime.first n
end

puts first_n_primes_new(5)
