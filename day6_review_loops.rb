# Enter your code here. Read input from STDIN. Print output to STDOUT

# Given a string, S, of length N that is indexed from 0 to N-1 , print its even-indexed and odd-indexed characters as  space-separated strings on a single line (see the Sample below for more detail).

num_tests = gets.to_i
substrings = []
(1..num_tests).each do |string|
  substrings << gets.chomp.to_s
end


def mult_even_odd_strings (substrings)
    new_string = []
    idx = 0
    while idx < substrings.length
        string = substrings[idx]
        new_substring = even_odd_string(string)
        new_string << new_substring
        idx += 1
    end

    new_string.each do |string|
        puts string
    end

end


# Helper Function
def even_odd_string(substring)

even_indexed = []
odd_indexed = []

    idx = 0
    while idx < substring.length
        if idx % 2 == 0
            even_indexed << substring[idx]
        elsif idx % 2 == 1
            odd_indexed << substring[idx]
        end
        idx += 1
    end

    even_indexed.join("") + " " + odd_indexed.join("")

end


mult_even_odd_strings(substrings)
