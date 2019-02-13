# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

# Note: For the purpose of this problem, we define empty string as valid palindrome.

# Example 1:

# Input: "A man, a plan, a canal: Panama"
# Output: true
# Example 2:

# Input: "race a car"
# Output: false

require 'pry'

# def is_palindrome(s)
#     str = s.gsub(/[^0-9a-z]/i, '').downcase
#     str == str.reverse
# end

# 2/13/19

def is_palindrome(s)
    new_str = ""
    
    s.each_char do |char|
        new_str << char.downcase if char.downcase != char.upcase || char == char.to_i.to_s
    end
    
    front_idx = 0
    back_idx = new_str.length - 1
    
    until front_idx > back_idx
        return false if new_str[front_idx] != new_str[back_idx]
        front_idx += 1
        back_idx -= 1
    end
    true
end

puts is_palindrome("0P")