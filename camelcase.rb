# hackerrank

def camelcase(s)
    total_words = 0
    
    s.each_char do |char|
        total_words += 1 if char == char.upcase
    end
    total_words + 1
end