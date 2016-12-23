#!/bin/ruby

# Computer is assuming that n and arr are strings so they need to be stripped.
# Stripping remove spaces at beginning and end to let you focus on the characters.
n = gets.strip.to_i   # n = "4" => 4
arr = gets.strip   # arr = "1 4 3 2" => "1 4 3 2"

# splitting a string of numbers turn into an array.
arr = arr.split(' ').map(&:to_i)
# arr = "1 4 3 2".split(' ') =>["1", "4", "3", "2"].map(&:to_i) => [1, 4, 3, 2]

reversed_arr = arr.reverse # reversed_arr = [2, 3, 4, 1]

reversed_arr.each do |num|
    print num
    print " "
end
