# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

# You may assume that the array is non-empty and the majority element always exist in the array.

# Example 1:

# Input: [3,2,3]
# Output: 3
# Example 2:

# Input: [2,2,1,1,1,2,2]
# Output: 2

def majority_element(nums)
    majority_size = nums.length / 2
    hash = {}
    
    nums.each do |n|
        if hash[n]
            hash[n] += 1
        else
            hash[n] = 1
        end
    end
    
    hash.each do |key, val|
        return key if val > majority_size
    end
end

# 5/6/19

def majority_element(nums)
    hash = {}
    majority_el = nil
    
    nums.each do |num|
        hash[num] = hash[num] ? hash[num] + 1 : 1
    end
    
    hash.each do |key, val|
        if majority_el.nil?
            majority_el = key
        else
            majority_el = key if val > hash[majority_el]
        end
    end
    majority_el
end