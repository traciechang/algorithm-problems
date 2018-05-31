# We are given two strings, A and B.

# A shift on A consists of taking string A and moving the leftmost character to the rightmost position. For example, if A = 'abcde', then it will be 'bcdea' after one shift on A. Return True if and only if A can become B after some number of shifts on A.

# Example 1:
# Input: A = 'abcde', B = 'cdeab'
# Output: true

# Example 2:
# Input: A = 'abcde', B = 'abced'
# Output: false
# Note:

# A and B will have length at most 100.
require 'pry'

def rotate_string(a, b)
    new_string = ""
    count = 0
    output = a == b ? true : false
    
    until count == a.length
        if a != b
            new_string = a[1, a.length-1]
            new_string << a[0]
            a = new_string
            count += 1
        else
            return true
        end
    end
    output
end

puts rotate_string("", "s")