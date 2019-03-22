# In a string S of lowercase letters, these letters form consecutive groups of the same character.

# For example, a string like S = "abbxxxxzyy" has the groups "a", "bb", "xxxx", "z" and "yy".

# Call a group large if it has 3 or more characters.  We would like the starting and ending positions of every large group.

# The final answer should be in lexicographic order.

 

# Example 1:

# Input: "abbxxxxzzy"
# Output: [[3,6]]
# Explanation: "xxxx" is the single large group with starting  3 and ending positions 6.
# Example 2:

# Input: "abc"
# Output: []
# Explanation: We have "a","b" and "c" but no large group.
# Example 3:

# Input: "abcdddeeeeaabbbcd"
# Output: [[3,5],[6,9],[12,14]]
 

# Note:  1 <= S.length <= 1000

def large_group_positions(s)
    count = 0
    start_idx = 0
    letter = ""
    output = []
    
    s.each_char.with_index do |char, idx|
        if letter != char
            output << [start_idx, idx-1] if count >= 3
            count = 1
            start_idx = idx
            letter = char
        else
            count +=1
        end
    end
    
    output << [start_idx, s.length-1] if count >= 3
    output
end

# 3/22/19

ef large_group_positions(s)
    output = []
    current_char = ""
    count = 0
    start_idx = nil
    last_idx = nil
    
    s.each_char.with_index do |char, idx|
        if current_char != char
            if count >= 3
                last_idx = idx - 1
                output << [start_idx, last_idx]
            end
            
            start_idx = idx
            last_idx = nil
            current_char = char
            count = 1
        else
            count += 1
        end
    end
    output << [start_idx, s.length-1] if count >= 3
    output
end