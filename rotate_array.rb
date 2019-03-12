# Given an array, rotate the array to the right by k steps, where k is non-negative.

# Example 1:

# Input: [1,2,3,4,5,6,7] and k = 3
# Output: [5,6,7,1,2,3,4]
# Explanation:
# rotate 1 steps to the right: [7,1,2,3,4,5,6]
# rotate 2 steps to the right: [6,7,1,2,3,4,5]
# rotate 3 steps to the right: [5,6,7,1,2,3,4]
# Example 2:

# Input: [-1,-100,3,99] and k = 2
# Output: [3,99,-1,-100]
# Explanation: 
# rotate 1 steps to the right: [99,-1,-100,3]
# rotate 2 steps to the right: [3,99,-1,-100]
# Note:

# Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
# Could you do it in-place with O(1) extra space?

# def rotate(nums, k)
#     k.times do
#         nums.unshift(nums.pop)
#     end
# end

# 3/7/19

require 'pry'

def rotate(nums, k)
    counter = 0
    current_arr = nums
    
    until counter == k
        temp_arr = []
        temp_arr << current_arr.pop
        temp_arr += current_arr
        current_arr = temp_arr
        # binding.pry
        counter += 1
    end
    current_arr
end

print rotate([1,2,3,4,5,6,7], 3)