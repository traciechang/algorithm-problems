# leetcode

# Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.

# Example 1:

# Input: [-4,-1,0,3,10]
# Output: [0,1,9,16,100]

# Example 2:

# Input: [-7,-3,2,3,11]
# Output: [4,9,9,49,121]

# 2/26/19

def sorted_squares(a)
    output = []
    
    a.each do |n|
        output << n **2
    end
    
    output.sort
end