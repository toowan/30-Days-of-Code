#!/bin/ruby

# creates an array of 6 items [nil, nil, nil, nil, nil, nil]
arr = Array.new(6)

# for each item, prompt user input of a string and convert it into an array
# (this will prompt user input 6 times)
for arr_i in (0..6-1)
    arr_t = gets.strip  # string of numbers
    arr[arr_i] = arr_t.split(' ').map(&:to_i)  # string => array
end

# arr =
#    [[1, 1, 1, 0, 0, 0],
#    [0, 1, 0, 0, 0, 0],
#    [1, 1, 1, 0, 0, 0],
#    [0, 0, 2, 4, 4, 0],
#    [0, 0, 0, 2, 0, 0],
#    [0, 0, 1, 2, 4, 0]]

# create an empty array to store all the hourglass sums
hourglass_sums = []

# Retrieve all the hourglasses by iterating through the indices of each column (j) within each row (i)
for i in (0..3)
  for j in (0..3)
    hourglass_sum = (arr[i][j] + arr[i][j+1] + arr[i][j+2]) + (arr[i+1][j+1]) + (arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2])

    hourglass_sums.push(hourglass_sum)
  end
end

# print the max value from the hourglass_sums array.
p hourglass_sums.max

=begin

hourglass #1 = (arr[i][0] + arr[i][1] + arr[i][2]) + (arr[i+1][1]) + (arr[i+2][0] + arr[i+2][1] + arr[i+2][2])

hourglass #2 = (arr[0][1] + arr[0][2] + arr[i][3]) + (arr[i+1][2]) + (arr[i+2][1] + arr[i+2][2] + arr[i+2][3])

hourglass #3 = (arr[0][2] + arr[0][3] + arr[i][4]) + (arr[i+1][3]) + (arr[i+2][2] + arr[i+2][3] + arr[i+2][4])

hourglass #4 = (arr[0][3] + arr[0][4] + arr[i][5]) + (arr[i+1][4]) + (arr[i+2][3] + arr[i+2][4] + arr[i+2][5])

increments j to go through all the hourglasses of each row (i)
after index 3 of each column (j), move onto the next row by incrementing i.

=end
