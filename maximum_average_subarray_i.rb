# Given an array consisting of n integers, find the contiguous subarray of given length k that has the maximum average value. And you need to output the maximum average value.

# Example 1:
# Input: [1,12,-5,-6,50,3], k = 4
# Output: 12.75
# Explanation: Maximum average is (12-5-6+50)/4 = 51/4 = 12.75
# Note:
# 1 <= k <= n <= 30,000.
# Elements of the given array will be in the range [-10,000, 10,000].

require 'pry'

def find_max_average(nums, k)
    max_avg = nil
    nums.each_with_index do |num, idx|
        break if idx == (nums.length - k + 1)
        avg = (nums[idx..idx+k-1].inject(:+)) / k.to_f
        max_avg = avg if max_avg.nil? || avg > max_avg
    end
    max_avg
end

puts find_max_average([1,12,-5,-6,50,3], 4)