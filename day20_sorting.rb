#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)  # converts string to array
swap_count = 0

# example: n = 3, a = [3, 2, 1]

i = 0
while i < n   # this loop ensures every element is being compared to other elements
  j = 0
  while j < (n-1) # compare elements adjacent to each other
    if (a[j] > a[j+1])    
        a[j], a[j+1] = a[j+1], a[j]    
        swap_count += 1   
    end
    j += 1
  end

  # If no elements were swapped, the array is already sorted so break.  
  if swap_count == 0
    break
  end

  i += 1
end


puts "Array is sorted in #{swap_count} swaps."
puts "First Element: #{a[0]}"
puts "Last Element: #{a[n-1]}" 



