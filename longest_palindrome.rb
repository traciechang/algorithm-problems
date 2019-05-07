# leetcode

Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.

This is case sensitive, for example "Aa" is not considered a palindrome here.

Note:
Assume the length of given string will not exceed 1,010.

Example:

Input:
"abccccdd"

Output:
7

Explanation:
One longest palindrome that can be built is "dccaccd", whose length is 7.

5/7/19

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