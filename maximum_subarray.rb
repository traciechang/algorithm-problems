# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

# Example:

# Input: [-2,1,-3,4,-1,2,1,-5,4],
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.
# Follow up:

# If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.

def max_sub_array(nums)
    current_sum = nil
    max_sum = nil
    
    nums.each do |n|
        if current_sum.nil?
            current_sum = n
        elsif current_sum + n < n
            current_sum = n
        else
            current_sum = current_sum + n
        end
        max_sum = current_sum if max_sum.nil? || current_sum > max_sum
    end
    max_sum
end