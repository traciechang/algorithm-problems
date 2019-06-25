# Given a word, you need to judge whether the usage of capitals in it is right or not.

# We define the usage of capitals in a word to be right when one of the following cases holds:

# All letters in this word are capitals, like "USA".
# All letters in this word are not capitals, like "leetcode".
# Only the first letter in this word is capital if it has more than one letter, like "Google".
# Otherwise, we define that this word doesn't use capitals in a right way.
# Example 1:
# Input: "USA"
# Output: True
# Example 2:
# Input: "FlaG"
# Output: False
# Note: The input will be a non-empty word consisting of uppercase and lowercase latin letters.

def detect_capital_use(word)
    output = true
    word_arr = word.split("")
    remaining_word = word_arr[1..word_arr.length-1].join
    if word_arr[0] == word_arr[0].upcase
        output = false if remaining_word != remaining_word.upcase && remaining_word != remaining_word.downcase
    else
        output = false if remaining_word != remaining_word.downcase
    end
    output
end

# 6/25/19

def detect_capital_use(word)
    return true if word == word.upcase || word == word.downcase || word == word[0].upcase + word[1...word.length].downcase
     false
 end