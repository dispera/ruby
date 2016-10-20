#!/usr/bin/env ruby
=begin
=end

i=1
for i in 1..50 do
  print i
  i += 1
end

######################################
j = 3
until j == 0 do
  print j
  j -= 1
end

######################################

k = 3
while k < 4
  print k
  k -= 1
end

######################################

30.times {print "Ruby!"}
######################################

user_input = ""
while !(user_input.include? "chau")

  print "Escribi algo: "
  user_input = gets.chomp

  if (user_input.include? "s") || (user_input.include? "S")
      user_input.gsub!(/s/, "th")
      user_input.gsub!(/S/, "Th")
      user_input.gsub!(/ce/, "the")
      user_input.gsub!(/ci/, "thi")
      puts "Por que hablas asi?: #{user_input}"
  else
      print "No tiene 'S'!"
  end
end
######################################

puts "String :"
text = gets.chomp
puts "Word to censor: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end
######################################

my_array = { "Diego Spera" => "genio",
    "other" => "not good",
    "sylicon valley" => "waiting for me" }

my_array.each do |nome, desc|
    puts "#{nome}: #{desc}"
end
######################################
######################################
######################################
######################################
######################################
######################################
