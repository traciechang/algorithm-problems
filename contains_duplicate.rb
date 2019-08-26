# Given an array of integers, find if the array contains any duplicates.

# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

# Example 1:

# Input: [1,2,3,1]
# Output: true
# Example 2:

# Input: [1,2,3,4]
# Output: false
# Example 3:

# Input: [1,1,1,3,3,4,3,2,4,2]
# Output: true

def contains_duplicate(nums)
    hash = {}
    
    nums.each do |num|
        if hash[num]
            hash[num] += 1
        else
            hash[num] = 1
        end
    end
    
    hash.each do |k, v|
        return true if v != 1
    end
    false
end

# 6/26/19

def contains_duplicate(nums)
    hash = {}
    nums.each do |num|
        if hash[num]
            return true
        else
            hash[num] = true
        end
    end
    false
end

# 8/26/19

def contains_duplicate(nums)
    hash = {}
    
    nums.each do |num|
        hash[num] = hash[num] ? hash[num] + 1 : 1
    end
    
    hash.each do |key, val|
        return true if val > 1
    end
    return false
end