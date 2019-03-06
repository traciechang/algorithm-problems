# X is a good number if after rotating each digit individually by 180 degrees, we get a valid number that is different from X.  Each digit must be rotated - we cannot choose to leave it alone.

# A number is valid if each digit remains a digit after rotation. 0, 1, and 8 rotate to themselves; 2 and 5 rotate to each other; 6 and 9 rotate to each other, and the rest of the numbers do not rotate to any other number and become invalid.

# Now given a positive number N, how many numbers X from 1 to N are good?

# Example:
# Input: 10
# Output: 4
# Explanation: 
# There are four good numbers in the range [1, 10] : 2, 5, 6, 9.
# Note that 1 and 10 are not good numbers, since they remain unchanged after rotating.
# Note:

# N  will be in range [1, 10000].

require 'pry'

# def rotated_digits(n)
#     good = {
#         2 => 5,
#         5 => 2,
#         6 => 9,
#         9 => 6
#         }
#     valid = {
#         0 => 0,
#         1 => 1,
#         8 => 8
#         }
#     count = 0
    
#     (1..n).each do |num|
#         is_possible = true
#         is_good = false
#         is_valid = false
        
#         num.to_s.each_char do |char|
#             if !valid[char.to_i] && !good[char.to_i]
#                 is_possible = false
#                 break
#             end
            
#             is_good = true if good[char.to_i]
#             is_valid = true if valid[char.to_i]
#         end
#         count +=1 if (is_possible && is_good && is_valid) || (is_possible && is_good)
#     end
#     count
# end

# 3/6/19

def rotated_digits(n)
    hash = {
        0 => 0,
        1 => 1,
        2 => 5,
        3 => nil,
        4 => nil,
        5 => 2,
        6 => 9,
        7 => nil,
        8 => 8,
        9 => 6
        }
    
    total = 0
    i = 1
    
    until i > n
        rotated_i = ""
        valid = true
        i.to_s.each_char do |char|
            opp = hash[char.to_i]
            
            if opp.nil?
                valid = false
            else
                rotated_i << opp.to_s
            end
        end
        total += 1 if valid  && rotated_i.to_i != i
        i += 1
    end
    total
end

puts rotated_digits(10)