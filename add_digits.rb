# Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.

# Example:

# Input: 38
# Output: 2 
# Explanation: The process is like: 3 + 8 = 11, 1 + 1 = 2. 
#              Since 2 has only one digit, return it.
# Follow up:
# Could you do it without any loop/recursion in O(1) runtime?

def add_digits(num)
    num = num.to_s.each_char.map(&:to_i).inject(:+) until num.to_s.length == 1
    num
end

# 8/12/19

def add_digits(num)
    return num if num.to_s.length == 1
    str = num.to_s
    sum = 0
    
    str.each_char do |char|
        sum += char.to_i
    end
    
    add_digits(sum)
end