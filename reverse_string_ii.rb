# Given a string and an integer k, you need to reverse the first k characters for every 2k characters counting from the start of the string. If there are less than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and left the other as original.
# Example:
# Input: s = "abcdefg", k = 2
# Output: "bacdfeg"
# Restrictions:
# The string consists of lower English letters only.
# Length of the given string and k will in the range [1, 10000]

require 'pry'

# def reverse_str(s, k)
#     length = s.length
#     remainder = length % (2*k)
#     i = 2*k-1
    
#     until s[i] == nil
#         temp_string = s[i - (2*k-1), 2*k]
#         reversed = temp_string[0, k].reverse
#         temp_string.slice!(0, k)
#         temp_string.prepend(reversed)
#         s.slice!(i-(2*k-1), 2*k)
#         s.insert(i-(2*k-1), temp_string)
#         i += 2*k
#     end
    
#     if remainder < k
#         # reverse all of remainder
#         temp_string = s[length-remainder, remainder].reverse
#         s.slice!(length-remainder, remainder)
#         s << temp_string
#     else
#         # reverse first k characters
#         temp_string = s[length - remainder, remainder]
#         reversed = temp_string[0, k].reverse
#         temp_string.slice!(0, k)
#         temp_string.prepend(reversed)
#         s.slice!(length-remainder, remainder)
#         s << temp_string
#     end
#     s
# end

# 3/12/19

def reverse_str(s, k)
    new_str = ""
    current_start_idx = 0
    
    s.each_char.with_index do |char, idx|
        if ((idx + 1) % (2 * k)) == 0
            new_str << s[current_start_idx..current_start_idx + k - 1].reverse
            new_str << s[current_start_idx + k..idx]
            current_start_idx = idx + 1
        end
    end
    new_str << s[current_start_idx..current_start_idx + k - 1].reverse
    remaining_chars = s[current_start_idx + k ..-1]
    new_str << remaining_chars if remaining_chars
    new_str
end

# puts reverse_str("dywvznukupgstvkflnahmvatrtwputeyefwgnbbltuffnsmbbeduuxqqbtodfwnxasvxtmxfrprocghcuznqhacoxyniltwsjvrd", 86)
# puts reverse_str("abcdefg", 1)
# puts reverse_str("abcdefg", 2)
puts reverse_str("abcd", 2)