# Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

# Examples:

# s = "leetcode"
# return 0.

# s = "loveleetcode",
# return 2.
# Note: You may assume the string contain only lowercase letters.

def first_uniq_char(s)
    checked_letters = []
    
    s.split("").each_with_index do |letter, idx|
        unique = true
        if !checked_letters.include?(letter)
            checked_letters << letter
            for i in (idx+1)..(s.length-1) do
                if letter == s[i]
                    unique = false
                    break
                end
            end
        else
            unique = false
        end
        return idx if unique
    end
    -1
end

# 6/18/19

def first_uniq_char(s)
    hash = {}
    uniq = ""
    
    s.each_char do |char|
        hash[char] = hash[char] ? hash[char] + 1 : 1
    end
    
    hash.each do |key, val|
        if val == 1
            uniq = key
            break
        end
    end
    
    s.each_char.with_index do |char, idx|
        return idx if char == uniq
    end
    -1
end

puts first_uniq_char("cc")
