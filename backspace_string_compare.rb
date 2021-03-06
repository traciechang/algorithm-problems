# Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.

# Example 1:

# Input: S = "ab#c", T = "ad#c"
# Output: true
# Explanation: Both S and T become "ac".
# Example 2:

# Input: S = "ab##", T = "c#d#"
# Output: true
# Explanation: Both S and T become "".
# Example 3:

# Input: S = "a##c", T = "#a#c"
# Output: true
# Explanation: Both S and T become "c".
# Example 4:

# Input: S = "a#c", T = "b"
# Output: false
# Explanation: S becomes "c" while T becomes "b".
# Note:

# 1 <= S.length <= 200
# 1 <= T.length <= 200
# S and T only contain lowercase letters and '#' characters.
# Follow up:

# Can you solve it in O(N) time and O(1) space?

require 'pry'

# def backspace_compare(s, t)
    
#     def mark_for_deletion(s)
#         s.each_char.with_index do |char, idx|
#             if char == "#"
#                 s[idx] = "*"
#                 until idx < 0 || s[idx] != "*"
#                     idx -=1
#                 end
#                 s[idx] = "*" unless idx < 0
#             end
#         end
#     end
    
#     mark_for_deletion(s)
#     mark_for_deletion(t)

#     s.delete!("*")
#     t.delete!("*")
    
#     s == t
# end

def backspace_compare(s, t)
    s_str = ""
    t_str = ""
    
    s.each_char do |char|
        if char == "#"
            s_str = s[0...s_str.length-1] unless s_str == ""
        else
            s_str << char
        end
    end
    
    t.each_char do |char|
        binding.pry
        if char == "#"
            t_str = t[0...t_str.length-1] unless t_str == ""
        else
            t_str << char
        end
    end
    
    s_str == t_str
end

# puts backspace_compare("ab##", "c#d#")
# puts backspace_compare("c##vnvr", "c##vn#nvr")
puts backspace_compare("nzp#o#g", "b#nzp#o#g")

# 8/19/19

def backspace_compare(s, t)
    s2 = ""
    t2 = ""
    
    s.each_char do |char|
        if char == "#"
            s2 = s2[0...s2.length-1]
        else
            s2 << char
        end
    end
    
    t.each_char do |char|
        if char == "#"
            t2 = t2[0...t2.length-1]
        else
            t2 << char
        end
    end
    
    s2 == t2
end