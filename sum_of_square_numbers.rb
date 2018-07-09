# Given a non-negative integer c, your task is to decide whether there're two integers a and b such that a2 + b2 = c.

# Example 1:
# Input: 5
# Output: True
# Explanation: 1 * 1 + 2 * 2 = 5
# Example 2:
# Input: 3
# Output: False

require 'pry'

def judge_square_sum(c)
    return true if c == 0
    last = c == 1 ? 1 : c-1
    (1..last).each do |n|
        n_squared = n**2
        break if n_squared > c
        return true if Math.sqrt(c - n_squared) % 1 == 0
    end
    false
end

puts judge_square_sum(3)