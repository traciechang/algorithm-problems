def compress(chars)
    hash = {}
    arr = []
    chars.each do |char|
        if hash[char]
            hash[char] +=1
        else
            hash[char] = 1
        end
    end
    
    hash.each do |key, val|
        arr << key
        arr << val.to_s unless val == 1
    end
    arr
end

puts compress(["a","a","b","b","c","c","c"])