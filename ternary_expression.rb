#!/usr/bin/env ruby

=begin
An even more concise version of if/else is the ternary conditional expression. It's called "ternary" because it takes three arguments: a boolean, an expression to evaluate if the boolean is true, and an expression to evaluate if the boolean is false.

The syntax looks like this:

boolean ? Do this if true: Do this if false
An example might be

puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."
=end

name = gets.chomp

puts name == "Maria" ? "The name is Maria!" : "Ok.. not Mary"
