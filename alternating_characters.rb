# hackerrank

def alternatingCharacters(s)
    minimum_deletions = 0
    prev_char = nil
    
    s.each_char do |char|
        if prev_char.nil?
            prev_char = char
        elsif char == prev_char
            minimum_deletions += 1
        else
            prev_char = char
        end
    end
    minimum_deletions
end