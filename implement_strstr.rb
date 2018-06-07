# Implement strStr().

# Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

# Example 1:

# Input: haystack = "hello", needle = "ll"
# Output: 2
# Example 2:

# Input: haystack = "aaaaa", needle = "bba"
# Output: -1
# Clarification:

# What should we return when needle is an empty string? This is a great question to ask during an interview.

# For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().

def str_str(haystack, needle)
    return 0 if needle == ""
    
    haystack.each_char.with_index do |char, idx|
        if char == needle[0]
            return idx if haystack[idx, needle.length] == needle
        end
    end
    -1
end