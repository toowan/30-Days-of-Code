# Enter your code here. Read input from STDIN. Print output to STDOUT

# prompts input of number of test cases
num_of_tests = gets.strip.to_i

# prompts input of n "num_of_tests" times and store in an array
integers = []
num_of_tests.times do 
  n = gets.to_i 
  integers << n   # [12, 5, 7]
end  

# check if n is prime
def n_is_prime?(n)
  if n <= 1
    return false
  elsif n == 2
    return true
  elsif n.to_i != n
    return false
  end

  # set the upper limit of the range to be square root of n
  for i in 2..Math.sqrt(n) do 
    if n % i == 0     
        return false
    end
  end
  return true
end


# check each n in the integers array
idx = 0
while idx < integers.length    
  # print "Prime" if true and "Not prime" if not true
  puts n_is_prime?(integers[idx]) ? "Prime" : "Not prime"
  idx += 1
end

puts "n_is_prime?(-1): #{n_is_prime?(-1)}. Expect false"
puts "n_is_prime?(0): #{n_is_prime?(0)}. Expect false"
puts "n_is_prime?(.5): #{n_is_prime?(.5)}. Expect false"
puts "n_is_prime?(1): #{n_is_prime?(1)}. Expect false"
puts "n_is_prime?(2): #{n_is_prime?(2)}. Expect true"
puts "n_is_prime?(3): #{n_is_prime?(3)}. Expect true"


