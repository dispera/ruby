#!/usr/bin/env ruby
system "clear"

print "Say something: "
user_input = gets.chomp

if (user_input.include? "s") || (user_input.include? "S")
    user_input.gsub!(/s/, "th")
    user_input.gsub!(/S/, "Th")
    user_input.gsub!(/ce/, "the")
    user_input.gsub!(/ci/, "thi")
    puts "Why are you talking like this?: #{user_input}"
else
    print "No S in the string!"
end
