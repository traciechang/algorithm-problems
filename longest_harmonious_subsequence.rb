# leetcode

# We define a harmonious array is an array where the difference between its maximum value and its minimum value is exactly 1.

# Now, given an integer array, you need to find the length of its longest harmonious subsequence among all its possible subsequences.

# Example 1:
# Input: [1,3,2,2,5,2,3,7]
# Output: 5
# Explanation: The longest harmonious subsequence is [3,2,2,2,3].
# Note: The length of the input array will not exceed 20,000.

# 5/8/19

def find_lhs(nums)
    sorted_nums = nums.sort
    hash = {}
    output = 0
    
    sorted_nums.each do |num|
        hash[num] = hash[num] ? hash[num] + 1 : 1
    end
    
    hash.each do |key, val|
        curr_count = 0
        if hash[key+1]
            curr_count = val + hash[key+1]
        end
        output = curr_count if curr_count > output
    end
    output
end