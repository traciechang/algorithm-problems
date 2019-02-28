# Given a non-empty array of integers, every element appears twice except for one. Find that single one.

# Note:

# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

# Example 1:

# Input: [2,2,1]
# Output: 1
# Example 2:

# Input: [4,1,2,1,2]
# Output: 4

def single_number(nums)
    hash = {}
    
    nums.each do |num|
        if hash[num]
            hash[num] += 1
        else
            hash[num] = 1
        end
    end
    
    hash.key(1)
end

# 2/28/19

def single_number(nums)
    hash = {}
    
    nums.each do |num|
        hash[num] = hash[num] ? hash[num] + 1 : 1
    end
    
    hash.each do |key, val|
        return key if val == 1
    end
end