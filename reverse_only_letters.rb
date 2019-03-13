# leetcode

# Given a string S, return the "reversed" string where all characters that are not a letter stay in the same place, and all letters reverse their positions.

# Example 1:

# Input: "ab-cd"
# Output: "dc-ba"

# Example 2:

# Input: "a-bC-dEf-ghIj"
# Output: "j-Ih-gfE-dCba"

# Example 3:

# Input: "Test1ng-Leet=code-Q!"
# Output: "Qedo1ct-eeLg=ntse-T!"

# 3/13/19

def reverse_only_letters(s)
    letters = []
    alphabet = ("a".."z").to_a
    
    s.each_char do |char|
        letters << char if alphabet.include?(char.downcase)
    end
    
    s.each_char.with_index do |char, idx|
        s[idx] = letters.pop if alphabet.include?(char.downcase)
    end
    s
end