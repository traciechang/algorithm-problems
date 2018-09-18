def longest_palindrome(s)
    hash = {}

    s.each_char.with_index do |char, idx|
        idx_count = 0
        current_palindrome = ""
        
        until idx_count > idx
            temp_str = s[idx_count..idx]
            current_palindrome = temp_str if is_palindrome?(temp_str) && temp_str.length > current_palindrome.length
            idx_count +=1
        end
        hash[idx] = hash[idx-1].nil? || current_palindrome.length > hash[idx-1].length ? current_palindrome : hash[idx-1]
    end
    output = hash[s.length - 1] ? hash[s.length - 1] : ""
    output
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
puts longest_palindrome("")
# puts is_palindrome?("racecar")
# puts is_palindrome?("dog")