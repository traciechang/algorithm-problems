# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:

# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

def two_sum(nums, target)
    hash = {}
    
    nums.each_with_index do |num, idx|
        return [idx, hash[num]].sort if hash[num]
        hash[target - num] = idx
    end
 end

#  2/21/19

def two_sum(nums, target)
    nums.each_with_index do |num, idx|
        (idx+1..nums.length-1).each do |i|
            return [idx, i] if num + nums[i] == target
        end
    end
end