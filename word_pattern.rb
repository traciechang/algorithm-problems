# Given a pattern and a string str, find if str follows the same pattern.

# Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.

# Example 1:

# Input: pattern = "abba", str = "dog cat cat dog"
# Output: true
# Example 2:

# Input:pattern = "abba", str = "dog cat cat fish"
# Output: false
# Example 3:

# Input: pattern = "aaaa", str = "dog cat cat dog"
# Output: false
# Example 4:

# Input: pattern = "abba", str = "dog dog dog dog"
# Output: false
# Notes:
# You may assume pattern contains only lowercase letters, and str contains lowercase letters separated by a single space.

require 'pry'

# def word_pattern(pattern, str)
#     hash = {}
#     pattern_arr = pattern.split("")
#     str_arr = str.split(" ")
    
#     return false if pattern_arr.length != str_arr.length
    
#     (0..pattern_arr.length-1).each do |i|
#         if !hash[pattern_arr[i]]
#             # binding.pry
#             return false if hash.has_value?(str_arr[i])
#             hash[pattern_arr[i]] = str_arr[i]
#         elsif hash[pattern_arr[i]] != str_arr[i]
#             return false
#         end
#     end
#     true
# end

puts word_pattern("abba", "dog cat cat dog")

# 2/11/19

def word_pattern(pattern, str)
    hash = {}
    words = str.split(" ")
    
    return false if pattern.length != words.length
    
    pattern.each_char.with_index do |letter, idx|
        if hash[letter]
            return false if hash[letter] != words[idx]
        else
            if hash.has_value?(words[idx])
                return false
            else
                hash[letter] = words[idx]
            end
        end
    end
    true
end