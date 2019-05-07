# leetcode

def longest_palindrome(s)
    hash = {}
    output = 0
    odd = false
    
    s.each_char do |letter|
        hash[letter] = hash[letter] ? hash[letter] + 1 : 1
    end
    
    hash.each do |key, val|
        if val % 2 == 0
            output += val
        else
            output += val - 1 if val > 1
            odd = true
        end
    end
    output += 1 if odd
    output
end