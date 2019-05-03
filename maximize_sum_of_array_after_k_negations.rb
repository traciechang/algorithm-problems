# leetcode

# Given an array A of integers, we must modify the array in the following way: we choose an i and replace A[i] with -A[i], and we repeat this process K times in total.  (We may choose the same index i multiple times.)

# Return the largest possible sum of the array after modifying it in this way.

 

# Example 1:

# Input: A = [4,2,3], K = 1
# Output: 5
# Explanation: Choose indices (1,) and A becomes [4,-2,3].
# Example 2:

# Input: A = [3,-1,0,2], K = 3
# Output: 6
# Explanation: Choose indices (1, 2, 2) and A becomes [3,1,0,2].
# Example 3:

# Input: A = [2,-3,-1,5,-4], K = 2
# Output: 13
# Explanation: Choose indices (1, 4) and A becomes [2,3,-1,5,4].
 

# Note:

# 1 <= A.length <= 10000
# 1 <= K <= 10000
# -100 <= A[i] <= 100

# 5/3/19

require 'pry'

def largest_sum_after_k_negations(a, k)
    new_arr = []
    sorted_a = a.sort
    negations = 0
    
    while negations < k
        sorted_a.each do |n|
            if negations < k && n < 0
                new_arr << n * -1
                negations += 1
            else
                new_arr << n
            end
        end
        
        if negations == k || (k - negations) % 2 == 0
            return new_arr.inject(:+)
        else
            new_arr.sort!
            first_n = new_arr[0]
            new_arr[0] = first_n * -1
            return new_arr.inject(:+)
        end
    end 
end

puts largest_sum_after_k_negations([-2,9,9,8,4], 5)