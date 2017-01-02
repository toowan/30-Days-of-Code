# Enter your code here. Read input from STDIN. Print output to STDOUT

# prompts input of number of test cases
num_of_tests = gets.strip.to_i

# prompts input of n "num_of_tests" times and store in an array
integers = []
num_of_tests.times do 
  n = gets.to_i 
  integers << n   # [12, 5, 7]
end  

def n_is_prime?(n)
  if n <= 1
    return = false
  if n == 2
    return = true
  end
  
  i = 2
  while i < n     # 4 < 12
    if n % i == 0     # 12 % 2 == 0 
      result = false
      break 
    else
      result = true
    end
    i += 1
  end
  result
end

idx = 0
while idx < integers.length    
  puts n_is_prime?(integers[idx]) ? "Prime" : "Not prime"
  idx += 1
end

puts "n_is_prime?(-1): #{n_is_prime?(-1)}. Expect false"
puts "n_is_prime?(0): #{n_is_prime?(0)}. Expect false"
puts "n_is_prime?(.5): #{n_is_prime?(.5)}. Expect false"
puts "n_is_prime?(1): #{n_is_prime?(1)}. Expect false"
puts "n_is_prime?(2): #{n_is_prime?(2)}. Expect true"
puts "n_is_prime?(3): #{n_is_prime?(3)}. Expect true"


