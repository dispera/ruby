#!/usr/bin/env ruby

=begin
Proc Syntax
Procs are easy to define! You just call Proc.new and pass in the block you want to save. Here's how we'd create a proc called cube that cubes a number (raises it to the third power):

cube = Proc.new { |x| x ** 3 }
We can then pass the proc to a method that would otherwise take a block, and we don't have to rewrite the block over and over!

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]
(The .collect! and .map! methods do the exact same thing.)

The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). We'll do this any time we pass a proc to a method that expects a block.
=end

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!
round_down = Proc.new {|num| num.floor}


# Write your code above this line!
ints = floats.collect(&round_down)

############
#Other exercise

def greeter
    yield
end

phrase = Proc.new {puts "Hello there!"}

greeter(&phrase)

#even easier way to accomplish ex above is using call to call the proc
phrase.call
