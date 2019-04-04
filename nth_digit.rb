# leetcode

# Find the nth digit of the infinite integer sequence 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ...

# Note:
# n is positive and will fit within the range of a 32-bit signed integer (n < 231).

# Example 1:

# Input:
# 3

# Output:
# 3
# Example 2:

# Input:
# 11

# Output:
# 0

# Explanation:
# The 11th digit of the sequence 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ... is a 0, which is part of the number 10.

# 4/3/19

require 'pry'

def find_nth_digit(n)
    counter = 0
    current = 1
    
    while true
    str = current.to_s
        if counter + str.length >= n
            # binding.pry
            str.each_char do |char|
                counter += 1
                return char.to_i if counter == n
            end
        else
            counter += str.length
            current += 1
        end
    end
end

puts find_nth_digit(11)