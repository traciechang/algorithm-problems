# Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# 3/19/19

def remove_duplicates(nums)
    seen = {}
    
    nums.each_with_index do |num, idx|
        if seen[num]
            nums[idx] = nil
        else
            seen[num] = true
        end
    end
    
    nums.delete(nil)
    nums.length
end