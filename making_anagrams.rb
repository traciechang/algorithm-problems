# hackerrank

def makingAnagrams(s1, s2)
    s1_length = s1.length
    s2_length = s2.length
    letters_to_delete = s1_length + s2_length
    
    letters1 = {}
    letters2 = {}
    
    s1.each_char do |char|
        letters1[char] = letters1[char] ? letters1[char] + 1 : 1
    end
    
    s2.each_char do |char|
        letters2[char] = letters2[char] ? letters2[char] + 1 : 1
    end
    
    letters1.each do |key, val|
        if letters2[key]
            if letters2[key] == letters1[key]
                letters_to_delete -= letters2[key] * 2
            else
                letters_to_delete = letters2[key] > letters1[key] ? letters_to_delete - letters1[key] * 2 : letters_to_delete - letters2[key] * 2
            end
        end
    end
    letters_to_delete
end