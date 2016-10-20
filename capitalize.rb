#!/usr/bin/env ruby

# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1].downcase}"
end

capitalize("ryAn") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jaNe"].each {|string| puts "#{string[0].upcase}#{string[1..-1].downcase}"} # prints "Ryan", then "Jane"
