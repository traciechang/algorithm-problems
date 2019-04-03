# leetcode

# Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.

# Note:
# The given integer is guaranteed to fit within the range of a 32-bit signed integer.
# You could assume no leading zero bit in the integer’s binary representation.
# Example 1:
# Input: 5
# Output: 2
# Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
# Example 2:
# Input: 1
# Output: 0
# Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.

# 4/3/19

def find_complement(num)
    b = num.to_s(2)
    b2 = ""
    
    b.each_char do |char|
        if char == "0"
            b2 << "1"
        else
            b2 << '0'
        end
    end
    b2.to_i(2)
end