# Given two strings s and t , write a function to determine if t is an anagram of s.

# Example 1:

# Input: s = "anagram", t = "nagaram"
# Output: true
# Example 2:

# Input: s = "rat", t = "car"
# Output: false
# Note:
# You may assume the string contains only lowercase alphabets.

# Follow up:
# What if the inputs contain unicode characters? How would you adapt your solution to such case?

def is_anagram(s, t)
    s_hash = {}
    t_hash = {}
    
    s.each_char do |char|
        if s_hash[char]
            s_hash[char] +=1
        else
            s_hash[char] = 1
        end
    end
    
    t.each_char do |char|
        if t_hash[char]
            t_hash[char] +=1
        else
            t_hash[char] = 1
        end
    end
    
    return false if s_hash.length != t_hash.length
    
    s_hash.each do |key, val|
        return false if t_hash[key] != val
    end
    true
end