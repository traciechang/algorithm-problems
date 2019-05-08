# leetcode

# Given an unsorted array of integers, find the length of longest continuous increasing subsequence (subarray).

# Example 1:
# Input: [1,3,5,4,7]
# Output: 3
# Explanation: The longest continuous increasing subsequence is [1,3,5], its length is 3. 
# Even though [1,3,5,7] is also an increasing subsequence, it's not a continuous one where 5 and 7 are separated by 4. 
# Example 2:
# Input: [2,2,2,2,2]
# Output: 1
# Explanation: The longest continuous increasing subsequence is [2], its length is 1.

# 5/8/19

def find_length_of_lcis(nums)
    return 0 if nums.empty?
    longest_seq = 1
    curr_seq = 1
    prev_num = nil
    
    nums.each do |num|
        if prev_num.nil?
            prev_num = num
        else
            if num > prev_num
                curr_seq += 1
                prev_num = num
            else
                longest_seq = curr_seq if curr_seq > longest_seq
                curr_seq = 1
                prev_num = num
            end
        end
    end
    longest_seq = curr_seq if curr_seq > longest_seq
    longest_seq
end