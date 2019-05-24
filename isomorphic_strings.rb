# Given two strings s and t, determine if they are isomorphic.

# Two strings are isomorphic if the characters in s can be replaced to get t.

# All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.

# Example 1:

# Input: s = "egg", t = "add"
# Output: true
# Example 2:

# Input: s = "foo", t = "bar"
# Output: false
# Example 3:

# Input: s = "paper", t = "title"
# Output: true
# Note:
# You may assume both s and t have the same length.

def is_isomorphic(s, t)
    hash = {}
    length_of_s = nil
    
    s.each_char.with_index do |char, idx|
        length_of_s = idx
        return false if !t[idx]
        if hash[char] 
            return false if hash[char] != t[idx]
        elsif !hash.has_value?(t[idx])
            hash[char] = t[idx]
        else
            return false
        end
    end
    return false if t[length_of_s+1] unless length_of_s.nil?
    true
end

# 5/23/19

def is_isomorphic(s, t)
    hash = {}
    
    s.each_char.with_index do |char, idx|
        if hash[char]
            return false if hash[char] != t[idx]
        elsif hash.values.include?(t[idx])
            return false
        else
            hash[char] = t[idx]
        end
    end
    true
end