#!/usr/bin/env ruby

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
sub_array = []

i = 0
s.each do |meat,cheese|
    sub_array[i] = cheese
    i += 1
end

sub_array.each do |item|
    puts item
end
