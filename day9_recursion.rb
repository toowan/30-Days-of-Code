# Enter your code here. Read input from STDIN. Print output to STDOUT

n = gets.to_i

def factorial(n)
    # base case
    if n == 0
        return 1
    # recursion case
    else
        n * factorial(n - 1)
    end
end

puts factorial(n)
