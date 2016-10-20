#!/usr/bin/env ruby

movies = {Gladiator: 10}

puts "What do you want to do? "
choice = gets.chomp

case choice
when "add"
    puts "Movie title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie rating: "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "Movie added!"
    else
        puts "Movie exists!"
    end
when "update"
    puts "Movie title: "
    title = gets.chomp
    unless movies[title.to_sym].nil?
        puts "New rating: "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "Rating updated!"
    else
        puts "Movie does not exist!"
    end
when "display"
    movies.each { |m, r| puts "#{m}: #{r}"} 
when "delete"
    puts "Movie title: "
    title = gets.chomp
    unless movies[title.to_sym].nil?
        movies.delete(title.to_sym)
        puts "Movie deleted!"
    else
        puts "Movie does not exist!"
    end    
else
    puts "Error Motherfucker!"
end
