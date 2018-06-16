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

# require "pry"
# def convert_to_title(n)
#     alpha = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    
#     num = n-1
#     q = num / 26 - 1
    
#     if q == 0
#         return alpha[num]
#     else
#         return alpha[q] + alpha[num % 26]
#     end
# end

# puts convert_to_title(78)