require 'pry'

def longest_palindrome(str)
    seen_hash = {}
    longest = 0
    idx_start = nil
    idx_end = nil

    str.each_char.with_index do |char, idx|
        seen_hash.each do |key, val|
            if val == char
                if is_palindrome?(str[key..idx])
                    palindrome_length = idx - key + 1
                    if palindrome_length > longest
                        longest = palindrome_length
                        idx_start = key
                        idx_end = idx
                    end
                end
            end
        end
        seen_hash[idx] = char
        # binding.pry
    end
    [idx_start, idx_end]
end

def is_palindrome?(str)
    idx_start = 0
    idx_end = str.length - 1

    until idx_start > idx_end
        return false if str[idx_start] != str[idx_end]
        idx_start +=1
        idx_end -=1
    end
    true
end

# puts longest_palindrome("acapella")
print longest_palindrome("gooddoctor")
print longest_palindrome("racecar")