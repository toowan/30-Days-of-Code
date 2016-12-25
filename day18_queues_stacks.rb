#!/bin/ruby

# create the Solution class
class Solution
    # create two readable & writable instance variables for stack and queue
    attr_accessor :stack, :queue

    # method to push character onto the stack
    def push_character(char)
        # if stack is nil, create an array with char and store it inside stack.
        if @stack == nil
            @stack = [char]
        # if stack is not empty, push char to stack array.
        else
            @stack.push(char)
        end
    end

    # method to enqueue character in queue instance variable
    def enqueue_character(char)
        # if queue is nil, create an array with char and store it inside queue.
        if @queue == nil
            @queue = [char]
        # if queue is not empty, push char to queue array.
        else
            @queue.push(char)
        end
    end

    # method to pop and return the character at the top of the stack instance variable.
    def pop_character
        @stack.pop
    end

    # method to dequeue and return the first character in the queue instance variable
    def dequeue_character
		@queue.shift
    end
end

### Provided by Hacker Rank:

# create Solution class object
solution = Solution.new

# read the input
input = gets

input.split('').each do |c|
    # push the character to stack
    solution.push_character c

    # enqueue the character to queue
    solution.enqueue_character c
end

# check if input string is palindrome or not
is_palindrome = true

(input.length / 2).times do
    if solution.pop_character != solution.dequeue_character
        is_palindrome = false
        break
    end
end

# print if string is palindrome or not
if is_palindrome
    puts "The word, #{input}, is a palindrome."
else
    puts "The word, #{input}, is not a palindrome."
end
