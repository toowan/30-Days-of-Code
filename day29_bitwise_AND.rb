#!/bin/ruby

# Solution #1 

t = gets.strip.to_i
for a0 in (0..t-1)
    n,k = gets.strip.split(' ') # => ["5", "2"]
    n = n.to_i                  # n = 5
    k = k.to_i                  # k = 2

	a = k - 1                   # => a = 1
	b = (~a) & -(~a)            # => b = 2

	if (a | b) > n
		puts (a - 1)
	else
		puts a
	end

end



# Solution #2 (simplified version of #1)

# t = gets.strip.to_i
# for a0 in (0..t-1)
#     n,k = gets.strip.split(' ') # => [n, k]
#     n = n.to_i   # n = 5
#     k = k.to_i   # k = 2

#     if ((k-1) | k) <= n
#  		puts (k-1)
# 	else 
# 		puts (k-2)
# 	end

# end