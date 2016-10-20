#!/usr/bin/env ruby
=begin
$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  return "n must be an integer." unless n.is_a? Integer

  return "n must be greater than 0." if n <= 0

  prime_array ||= []

  prime = Prime.new
  n.times do
    prime_array << prime.next
  end
  prime_array
end

puts "Set prime number lookup limit: "
limit = gets.chomp
limit = limit.to_i

first_n_primes(limit)
=end


require 'prime'

def first_n_primes(n)
  # Check for correct input!
  "n must be an integer" unless n.is_a? Integer
  "n must be greater than 0" if n <= 0

  # The Ruby 1.9 Prime class makes the array automatically!
  prime = Prime.instance
  prime.first n
end

first_n_primes(10)
