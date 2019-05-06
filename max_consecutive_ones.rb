# Given a binary array, find the maximum number of consecutive 1s in this array.

# Example 1:
# Input: [1,1,0,1,1,1]
# Output: 3
# Explanation: The first two digits or the last three digits are consecutive 1s.
#     The maximum number of consecutive 1s is 3.
# Note:

# The input array will only contain 0 and 1.
# The length of input array is a positive integer and will not exceed 10,000

def find_max_consecutive_ones(nums)
    max_ones = 0
    count = 0
    
    nums.each do |n|
        if n == 1
            count +=1
        else
            max_ones = count if count > max_ones
            count = 0
        end
    end
    
    max_ones = count if count > max_ones
    max_ones
end

def find_max_consecutive_ones(nums)
    max_ones = 0
    current_count = 0
    
    nums.each do |n|
        if n == 1
            current_count += 1
        else
            if current_count > max_ones
                max_ones = current_count
            end
            current_count = 0
        end
    end
    max_ones = current_count if current_count > max_ones
    max_ones
end