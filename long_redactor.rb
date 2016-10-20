#!/usr/bin/env ruby

puts "String :"
text = gets.chomp
puts "Words to censor: "
redact = gets.chomp
redact_long = redact.split(" ")
words = text.split(" ")

redact_long.each do |censor|
    words.collect! do |word|
        if word == censor
           word = "REDACTED"
       end
    end
end

words.each do |word|
    print word #+ " "
end
