# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

# Example 1:

# Input: [3,0,1]
# Output: 2
# Example 2:

# Input: [9,6,4,2,3,5,7,0,1]
# Output: 8
# Note:
# Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?

require 'pry'

def missing_number(nums)
    length = nums.length
    sorted_nums = nums.sort
    correct_nums = (0..length).to_a
    
    correct_nums.each_with_index do |n, idx|
        return n if n != sorted_nums[idx]
    end
end

puts missing_number([3,0,1])