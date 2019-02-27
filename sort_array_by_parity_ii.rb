# leetcode

# Given an array A of non-negative integers, half of the integers in A are odd, and half of the integers are even.

# Sort the array so that whenever A[i] is odd, i is odd; and whenever A[i] is even, i is even.

# You may return any answer array that satisfies this condition. 

# Example 1:

# Input: [4,2,5,7]
# Output: [4,5,2,7]
# Explanation: [4,7,2,5], [2,5,4,7], [2,7,4,5] would also have been accepted.

# 2/27/19

def sort_array_by_parity_ii(a)
    even = []
    odd = []
    output = []
    
    a.each do |n|
        if n % 2 == 0
            even << n
        else
            odd << n
        end
    end
    
    until even.empty? && odd.empty?
        if output.length % 2 == 0
            output << even.shift
        else
            output << odd.shift
        end
    end
    output
end