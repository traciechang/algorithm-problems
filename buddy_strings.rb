# Given two strings A and B of lowercase letters, return true if and only if we can swap two letters in A so that the result equals B.

 

# Example 1:

# Input: A = "ab", B = "ba"
# Output: true
# Example 2:

# Input: A = "ab", B = "ab"
# Output: false
# Example 3:

# Input: A = "aa", B = "aa"
# Output: true
# Example 4:

# Input: A = "aaaaaaabc", B = "aaaaaaacb"
# Output: true
# Example 5:

# Input: A = "", B = "aa"
# Output: false
 

# Note:

# 0 <= A.length <= 20000
# 0 <= B.length <= 20000
# A and B consist only of lowercase letters.

def buddy_strings(a, b)
    mismatch_count = 0
    hash_a = {}
    hash_b = {}
    
    a.each_char.with_index do |char, idx|
        mismatch_count += 1 if char != b[idx]
        hash_a[char] = hash_a[char] ? hash_a[char] + 1 : 1
        hash_b[b[idx]] = hash_b[b[idx]] ? hash_b[b[idx]] + 1 : 1
    end
    
    hash_a.each do |key, val|
        return false if hash_b[key].nil? || hash_b[key] != val
        return true if mismatch_count == 00 && val >= 2 && hash_b[key] == val
    end
    return false if mismatch_count != 2
    true
end