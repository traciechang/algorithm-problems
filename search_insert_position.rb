# Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You may assume no duplicates in the array.

# Example 1:

# Input: [1,3,5,6], 5
# Output: 2
# Example 2:

# Input: [1,3,5,6], 2
# Output: 1
# Example 3:

# Input: [1,3,5,6], 7
# Output: 4
# Example 4:

# Input: [1,3,5,6], 0
# Output: 0

def search_insert(nums, target)
    output = nums.find_index(target)
    
    if output == nil
        nums.each_with_index do |num, idx|
            if idx == nums.length-1 && target > num
                output = nums.length
            elsif target < num
                output = idx
                break
            end
        end
    end
    output
end

# 3/5/19

def search_insert(nums, target)
    nums.each_with_index do |num, idx|
        return idx if num == target || num > target
    end
    nums.length
end