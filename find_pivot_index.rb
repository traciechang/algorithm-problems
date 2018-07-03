# Given an array of integers nums, write a method that returns the "pivot" index of this array.

# We define the pivot index as the index where the sum of the numbers to the left of the index is equal to the sum of the numbers to the right of the index.

# If no such index exists, we should return -1. If there are multiple pivot indexes, you should return the left-most pivot index.

# Example 1:
# Input: 
# nums = [1, 7, 3, 6, 5, 6]
# Output: 3
# Explanation: 
# The sum of the numbers to the left of index 3 (nums[3] = 6) is equal to the sum of numbers to the right of index 3.
# Also, 3 is the first index where this occurs.
# Example 2:
# Input: 
# nums = [1, 2, 3]
# Output: -1
# Explanation: 
# There is no index that satisfies the conditions in the problem statement.
# Note:

# The length of nums will be in the range [0, 10000].
# Each element nums[i] will be an integer in the range [-1000, 1000].

require 'pry'

def pivot_index(nums)
    #     nums.each_with_index do |num, idx|
    #         if idx == 0
    #             return idx if nums[idx+1..nums.length-1].inject(:+) == 0
    #         end
            
    #         if idx == nums.length-1
    #             return idx if nums[0...idx].inject(:+) == 0
    #         end
            
    #         return idx if nums[0...idx].inject(:+) == nums[idx+1..nums.length-1].inject(:+)
    #     end
    #     -1
        
    total = nums.inject(:+)
    
    nums.each_with_index do |num, idx|
        if idx == 0 || idx == nums.length-1
            return idx if total - num == 0
        else
            left_sum = nums[0...idx].inject(:+)
            return idx if total - num - left_sum == left_sum
        end
    end
    -1
end

puts pivot_index([1,7,3,6,5,6])