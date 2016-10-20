#!/usr/bin/env ruby
system "clear"
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
system "clear"
