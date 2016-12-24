#!/bin/ruby

S = gets.strip

begin
  # Integer(token) checks if S is an integer?
  # Returns S if it's an integer
  puts Integer(S)

  # If not, rescue with error message
rescue
  puts 'Bad String'
end
