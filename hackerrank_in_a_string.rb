def hackerrankInString(s)
    hackerrank = "hackerrank"
    idx = 0
    current_letter = hackerrank[idx]
    
    s.each_char do |char|
        if char == current_letter
            idx += 1
            current_letter = hackerrank[idx]
        end
    end
    idx >= hackerrank.length ? 'YES' : 'NO'
end