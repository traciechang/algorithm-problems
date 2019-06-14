# A sentence S is given, composed of words separated by spaces. Each word consists of lowercase and uppercase letters only.

# We would like to convert the sentence to "Goat Latin" (a made-up language similar to Pig Latin.)

# The rules of Goat Latin are as follows:

# If a word begins with a vowel (a, e, i, o, or u), append "ma" to the end of the word.
# For example, the word 'apple' becomes 'applema'.
 
# If a word begins with a consonant (i.e. not a vowel), remove the first letter and append it to the end, then add "ma".
# For example, the word "goat" becomes "oatgma".
 
# Add one letter 'a' to the end of each word per its word index in the sentence, starting with 1.
# For example, the first word gets "a" added to the end, the second word gets "aa" added to the end and so on.
# Return the final sentence representing the conversion from S to Goat Latin. 

 

# Example 1:

# Input: "I speak Goat Latin"
# Output: "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
# Example 2:

# Input: "The quick brown fox jumped over the lazy dog"
# Output: "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
 

# Notes:

# S contains only uppercase, lowercase and spaces. Exactly one space between each word.
# 1 <= S.length <= 150.

def to_goat_latin(s)
    vowels = %w(a e i o u)
    arr = s.split(" ")
    new_arr = []
    
    arr.each do |word|
        if vowels.include?(word[0].downcase)
            new_arr << word + "ma"
        else
            new_arr << word[1, word.length-1] + word[0] + "ma"
        end
    end
    
    new_arr.map.with_index do |word, idx|
        word + "a" * (idx+1)
    end.join(" ")
end

# 6/14/19

def to_goat_latin(s)
    vowels = %w(a e i o u)
    arr = s.split(" ")
    output = ""
    
    arr.each_with_index do |word, idx|
        if vowels.include?(word[0].downcase)
            output << word + "ma" + ("a" * (idx + 1)) + " "
        else
            output << word[1...word.length] + word[0] + "ma" + ("a" * (idx + 1)) + " "
        end
    end 
    output = output[0...output.length - 1]
    output
end