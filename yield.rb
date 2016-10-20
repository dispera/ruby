#!/usr/bin/env ruby

def double(n)
    yield n
end

double(99) {|num| num * 2}
