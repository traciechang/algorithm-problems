# Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.

# Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.

# The order of output does not matter.

# Example 1:

# Input:
# s: "cbaebabacd" p: "abc"

# Output:
# [0, 6]

# Explanation:
# The substring with start index = 0 is "cba", which is an anagram of "abc".
# The substring with start index = 6 is "bac", which is an anagram of "abc".
# Example 2:

# Input:
# s: "abab" p: "ab"

# Output:
# [0, 1, 2]

# Explanation:
# The substring with start index = 0 is "ab", which is an anagram of "ab".
# The substring with start index = 1 is "ba", which is an anagram of "ab".
# The substring with start index = 2 is "ab", which is an anagram of "ab".

require 'pry'

def find_anagrams(s, p)
    sorted_p = p.split("").sort
    p_length = p.length
    s_arr = s.split("")
    s_length = s.length
    output = []
    
    s_arr.each_with_index do |letter, idx|
        # binding.pry
        break if idx == s_length - p_length + 1
        output << idx if s_arr[idx..idx+(p_length-1)].sort == sorted_p
    end
    output
end

puts find_anagrams("abab", "ab")