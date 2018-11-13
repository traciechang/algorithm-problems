def anagram(s)
    return -1 if s.length % 2 != 0
    total_changes = 0
    middle = s.length / 2
    str1 = s[0...middle]
    str2 = s[middle..-1]
    hash = {}
    
    str1.each_char do |char|
        hash[char] = hash[char] ? hash[char] + 1 : 1
    end
    
    str2.each_char do |char|
        if hash[char] && hash[char] > 0
            hash[char] -= 1
        else
            total_changes +=1
        end
    end
    
    total_changes
end