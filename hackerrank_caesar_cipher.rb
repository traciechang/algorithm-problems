def caesarCipher(s, k)
    alphabet = ("a".."z").to_a
    new_str = ""
    
    s.each_char do |char|
        idx = alphabet.find_index(char.downcase)
        
        if idx.nil?
            new_str << char
        else
            new_idx = (idx + k) % 26
            if char == char.downcase
                new_str << alphabet[new_idx]
            else
                new_str << alphabet[new_idx].upcase
            end
        end
    end
    new_str
end