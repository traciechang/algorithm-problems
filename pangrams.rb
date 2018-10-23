# hackerrank

def pangrams(s)
    alphabet = {}
    
    ("a".."z").each do |char|
        alphabet[char] = false
    end
    
    s.each_char do |char|
        alphabet[char.downcase] = true
    end
    
    alphabet.each do |k, v|
        return "not pangram" if !v
    end
    "pangram"
end