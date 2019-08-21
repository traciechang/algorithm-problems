def get_hint(secret, guess)
    output = ""
    hash = {}
    hash2 = {}
    bulls = 0
    cows = 0
    
    secret.each_char.with_index do |char, idx|
        if guess[idx] == char
            bulls += 1
        else
            hash[char] = hash[char] ? hash[char] + 1 : 1
            hash2[guess[idx]] = hash2[guess[idx]] ? hash2[guess[idx]] + 1 : 1
        end
    end
    
    hash.each do |key, val|
        count = 0
        
        if hash2[key]
            if val > hash2[key]
                cows += hash2[key]
            else
                cows += val
            end
        end
    end
    "#{bulls}A#{cows}B"
end

# 8/21/19

def get_hint(secret, guess)
    a = 0
    b = 0
    hash = {}
    
    secret.each_char.with_index do |char, idx|
        if guess[idx] == char
            a += 1
        else
            hash[char] = hash[char] ? hash[char] + 1 : 1
        end
    end
    
    guess.each_char.with_index do |char, idx|
        if secret[idx] != char && hash[char] && hash[char] != 0
            b += 1
            hash[char] -=1
        end
    end
    "#{a}A#{b}B"
end