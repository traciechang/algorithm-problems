# Given an integer array, you need to find one continuous subarray that if you only sort this subarray in ascending order, then the whole array will be sorted in ascending order, too.

# You need to find the shortest such subarray and output its length.

# Example 1:
# Input: [2, 6, 4, 8, 10, 9, 15]
# Output: 5
# Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole array sorted in ascending order.
# Note:
# Then length of the input array is in range [1, 10,000].
# The input array may contain duplicates, so ascending order here means <=.

def find_unsorted_subarray(nums)
    sorted_nums = nums.sort
    start_idx = 0
    end_idx = 0
    
    sorted_nums.each_with_index do |n, idx|
        if n != nums[idx]
            start_idx = idx
            break
        end
    end
    
    nums.length.downto(0) do |n|
        if nums[n] != sorted_nums[n]
            end_idx = n
            break
        end
    end
    
    if start_idx == 0 && end_idx == 0
        0
    else
        end_idx - start_idx + 1
    end
end