# Given an array with n integers, your task is to check if it could become non-decreasing by modifying at most 1 element.

# We define an array is non-decreasing if array[i] <= array[i + 1] holds for every i (1 <= i < n).

# Example 1:
# Input: [4,2,3]
# Output: True
# Explanation: You could modify the first 4 to 1 to get a non-decreasing array.
# Example 2:
# Input: [4,2,1]
# Output: False
# Explanation: You can't get a non-decreasing array by modify at most one element.
# Note: The n belongs to [1, 10,000].

def check_possibility(nums)
    counter = 0
    
    nums.each_with_index do |n, i|
        unless i == nums.length-1
            if n > nums[i+1]
                counter +=1
                return false if counter == 2
                return false if nums[i-1] > nums[i+1]-1 && (nums[i] > nums[i+2] unless i==nums.length-2) unless i-1 < 0
            end
        end
    end
    
    true
end

# puts check_possibility([2,3,3,2,4])
puts check_possibility([3,4,2,3])
puts check_possibility([4,2,1])
puts check_possibility([1,2,4,5,3]) 
# true