require 'pry'

def longest_palindrome(s)
    return "" if s == ""
    seen = {}
    palindromes = {}

    s.each_char.with_index do |char, idx|
        if seen[char]
            # binding.pry
            if idx - palindromes[idx-1] - 1 == seen[char] || is_palindrome?(s[seen[char]..idx])
                palindromes[idx] = s[seen[char]..idx].length
                # palindromes[idx] = palindromes[idx-1] + 1
                seen[char] = idx
            else
                seen[char] = idx
                palindromes[idx] = 1
            end
        else
            seen[char] = idx
            palindromes[idx] = 1
        end
    end
    # binding.pry
    pal_length = palindromes.values.max
    idx_end = palindromes.key(pal_length)
    s[idx_end-pal_length+1..idx_end]
end

def is_palindrome?(str)
    start_idx = 0
    end_idx = str.length - 1

    until start_idx >= end_idx
        return false if str[start_idx] != str[end_idx]
        start_idx +=1
        end_idx -=1
    end
    true
end

# puts longest_palindrome("babad")
# puts longest_palindrome("cbbd")
# puts longest_palindrome("racecar")
# puts longest_palindrome("")
# puts longest_palindrome("dog")
puts longest_palindrome("zatabbamafa")
# puts longest_palindrome("ccc")
# puts longest_palindrome("zaabbaaf")