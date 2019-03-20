# Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

# Each letter in the magazine string can only be used once in your ransom note.

# Note:
# You may assume that both strings contain only lowercase letters.

# canConstruct("a", "b") -> false
# canConstruct("aa", "ab") -> false
# canConstruct("aa", "aab") -> true

def can_construct(ransom_note, magazine)
    ransom_hash = {}
    magazine_hash = {}
    
    ransom_note.each_char do |char|
        if ransom_hash[char]
            ransom_hash[char] += 1
        else
            ransom_hash[char] = 1
        end
    end
    
    magazine.each_char do |char|
        if magazine_hash[char]
            magazine_hash[char] +=1
        else
            magazine_hash[char] = 1
        end
    end
    
    ransom_hash.each do |key, val|
        return false if magazine_hash[key].nil? || magazine_hash[key] < val
    end
    
    true
end

# 3/20/19

def can_construct(ransom_note, magazine)
    note_hash = {}
    magazine_hash = {}
    
    ransom_note.each_char do |char|
        note_hash[char] = note_hash[char] ? note_hash[char] + 1 : 1
    end
    
    magazine.each_char do |char|
        magazine_hash[char] = magazine_hash[char] ? magazine_hash[char] + 1 : 1
    end
    
    note_hash.each do |key, val|
        return false if magazine_hash[key].nil? || magazine_hash[key] < val
    end
    true
end