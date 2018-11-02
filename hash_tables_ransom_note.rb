# hackerrank

def checkMagazine(magazine, note)
    magazine_hash = {}
    output = "Yes"
    
    magazine.each do |word|
        val = magazine_hash[word]
        magazine_hash[word] = val ? val + 1 : 1
    end
    
    note.each do |word|
        if magazine_hash[word] && magazine_hash[word] > 0
            magazine_hash[word] -= 1
        else
            output = "No"
            break
        end
    end
    print output
end