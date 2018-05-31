# Write an algorithm to determine if a number is "happy".

# A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

# Example: 

# Input: 19
# Output: true
# Explanation: 
# 12 + 92 = 82
# 82 + 22 = 68
# 62 + 82 = 100
# 12 + 02 + 02 = 1

require 'pry'

def is_happy(n)
    result = n
    hash = {}
    
    until result == 1
        array = result.to_s.split("").map do |number|
            number.to_i ** 2
        end

        result = array.inject(:+)
        
        if hash[result]
            return false
        else
            hash[result] = 0
        end
    end
    true
end

puts is_happy(19)