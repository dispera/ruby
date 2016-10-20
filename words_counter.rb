#!/usr/bin/env ruby

puts "Insert text: "
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)

words.each {|word| frequencies[word] +=1}

frequencies = frequencies.sort_by {|word,freq| freq}
frequencies.reverse!

frequencies.each do |word, freq|
    puts word + " " + freq.to_s
end

