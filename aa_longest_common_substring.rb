# Write a function, longest_common_substring(str1, str2) that takes two strings and returns the longest common substring. A substring is defined as any consecutive slice of letters from another string.

# Naive Implementation

def longest_common_substring(str1, str2)
    idx = 0
    length = 0
    substring = ""
    str1_length = str1.length

    while idx < str1_length
        if str2.include?(str1[idx])
            length = 0
            until length > str1_length || !str2.include?(str1[idx..idx+length])
                substring = str1[idx..idx+length] if substring.length < str1[idx..idx+length].length
                length +=1
            end
        end
        idx +=1
    end
    substring
end

puts longest_common_substring("cycle", "bicycle")