require "pry"

def compress(chars)
    hash = {}
    output = []
    
    chars.each do |char|
        if hash[char]
            hash[char] +=1
        else
            hash[char] = 1
        end
    end
    
    hash.each do |key, val|
        output << key
        unless val == 1
            val.to_s.each_char do |char|
                output << char
            end
        end
    end
    output
end

print compress(["a","a","b","b","c","c","c"])