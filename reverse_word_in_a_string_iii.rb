# Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

# Example 1:
# Input: "Let's take LeetCode contest"
# Output: "s'teL ekat edoCteeL tsetnoc"
# Note: In the string, each word is separated by single space and there will not be any extra space in the string.

def reverse_words(s)
    output = []
    arr = s.split(" ")
    
    arr.each do |word|
        output << word.reverse
    end
    
    output.join(" ")
end

# 3/12/19

def reverse_words(s)
    words = s.split(" ")
    reversed_arr = []
    
    words.each do |word|
        reversed_arr << word.reverse
    end
    reversed_arr.join(" ")
end