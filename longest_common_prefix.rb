# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.

def longest_common_prefix(strs)
    output = ""
    length = strs.length-1
    
    return output if strs == []
    return strs[0] if length == 0
    
    
    strs[0].each_char.with_index do |letter, idx|
        same = true
        (1..length).each do |i|
            if letter != strs[i][idx]
                same = false
                break
            end
        end
        if same
            output << letter
        else
            break
        end
    end
    
    output
end