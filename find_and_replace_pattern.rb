# leetcode

# 8/5/19

def find_and_replace_pattern(words, pattern)
    output = []
    
    words.each do |word|
        hash = {}
        hi = true
        if word.length == pattern.length
            pattern.each_char.with_index do |char, idx|
                if hash[char]
                    hi = false if hash[char] != word[idx]
                else
                    hash[char] = word[idx]
                end
            end
        end
        output << word if hi
            
    end
    output
end