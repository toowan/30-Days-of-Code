#!/bin/ruby

N = gets.strip.to_i

if (N % 2 == 1) || ((N % 2 == 0) && (N >= 6 && N <= 20))
    print 'Weird'
elsif (N % 2 == 0) && ((N >= 2 && N <= 5) || (N > 20))
    print 'Not Weird'
end
