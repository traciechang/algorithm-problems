# Write a function that takes a string as input and reverse only the vowels of a string.

# Example 1:
# Given s = "hello", return "holle".

# Example 2:
# Given s = "leetcode", return "leotcede".

# Note:
# The vowels does not include the letter "y".

def reverse_vowels(s)
    vowels = %w(a e i o u A E I O U)
    vowels_in_word = []
    
    s.each_char.with_index do |letter, idx|
        if vowels.include?(letter)
            vowels_in_word << letter
        end
    end
    
    vowels_in_word.reverse!
    counter = 0
    
    s.each_char.with_index do |letter, idx|
        if vowels.include?(letter)
            s.slice!(idx)
            s.insert(idx, vowels_in_word[counter])
            counter += 1
        end
    end
    s
end

# 3/13/19

def reverse_vowels(s)
    vowels = []
    def is_vowel(char)
        char == "a" || char == "e" || char == "i" || char == "o" || char == "u" || char == "A" || char == "E" || char == "I" || char == "O" || char == "U"
    end
    
    s.each_char do |char|
        vowels << char if is_vowel(char)
    end
    
    s.each_char.with_index do |char, idx|
        s[idx] = vowels.pop if is_vowel(char)
    end
    s
end