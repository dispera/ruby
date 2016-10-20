#!/usr/bin/env ruby

puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

text.gsub!(/./, " ")
text.gsub!(/,/, " ")
puts text
words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
