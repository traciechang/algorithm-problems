# Given a non-empty array of digits representing a non-negative integer, plus one to the integer.

# The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.

# You may assume the integer does not contain any leading zero, except the number 0 itself.

# Example 1:

# Input: [1,2,3]
# Output: [1,2,4]
# Explanation: The array represents the integer 123.
# Example 2:

# Input: [4,3,2,1]
# Output: [4,3,2,2]
# Explanation: The array represents the integer 4321.

def plus_one(digits)
    (digits.join("").to_i + 1).to_s.split("").map do |n|
        n.to_i
    end
end

# 3/25/19

def plus_one(digits)
    num_str = ""
    output = []
    
    digits.each do |digit|
        num_str << digit.to_s
    end
    
    new_digits_str = (num_str.to_i + 1).to_s
    
    new_digits_str.each_char do |char|
        output << char.to_i
    end
    output
end