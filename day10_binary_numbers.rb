#!/bin/ruby

n = gets.strip.to_i

# convert decimal to binary
def decimal_to_binary(n)
    binary_arr = []
    while n > 0
        if n % 2 == 0
            remainder = 0
            binary_arr << remainder
        elsif n % 2 == 1
            remainder = 1
            binary_arr << remainder
        end
        n = n/2
    end

    # Get max consecutive occurences of "1" in the binary representation

    # Chunks 1's and non-1's into groups [true, [1]] or [false, [0]]
    chunks = binary_arr.chunk {|x| x == 1}

    # Takes the chunks and return its size if it's true.  If false, return 0
    num_of_ones_in_chunks = chunks.map {|is_true, chunk_array| is_true ? chunk_array.size : 0}

    # Return the chunk with the max size
    max_num_of_ones_in_chunk = num_of_ones_in_chunks.max

end

puts decimal_to_binary(n)
