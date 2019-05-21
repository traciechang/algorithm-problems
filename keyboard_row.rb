# Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.


# American keyboard


# Example 1:
# Input: ["Hello", "Alaska", "Dad", "Peace"]
# Output: ["Alaska", "Dad"]
# Note:
# You may use one character in the keyboard more than once.
# You may assume the input string will only contain letters of alphabet.

def find_words(words)
    top_row = %w(q w e r t y u i o p)
    middle_row = %w(a s d f g h j k l)
    bottom_row = %w(z x c v b n m)
    output = []
    
    words.each do |word|
        row = ""
        same_row = true
       
        word.split('').each do |letter|
            if row != ""
                if !row.include?(letter.downcase)
                    same_row = false
                    break
                end
            elsif top_row.include?(letter.downcase)
                row = top_row
            elsif middle_row.include?(letter.downcase)
                row = middle_row
            elsif bottom_row.include?(letter.downcase)
                row = bottom_row
            end
        end
        output << word if same_row
    end
    output
end

# 5/21/19

def find_words(words)
    # output = []
    # keyboard = [%w(q w e r t y u i o p), %w(a s d f g h j k l), %w(z x c v b n m)]
    
    keyboard.each do |row|
        words.each do |word|
            same_row = true
            word.each_char do |char|
                same_row = false if !row.include?(char.downcase)
            end
            output << word if same_row
        end
    end
    # output
end