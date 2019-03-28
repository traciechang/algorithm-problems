# leetcode 

# Given a non-negative integer numRows, generate the first numRows of Pascal's triangle.

# Example:

# Input: 5
# Output:
# [
#      [1],
#     [1,1],
#    [1,2,1],
#   [1,3,3,1],
#  [1,4,6,4,1]
# ]

# 3/28/19

require 'pry'

def generate(num_rows)
    return [[1]] if num_rows == 1
    pastel = generate(num_rows - 1)
    prev_row = pastel[-1]
    
    arr = []
    prev_num = nil
    prev_row.each_with_index do |num, idx|
        if prev_row.length == 1
            arr << prev_row[0]
            arr << prev_row[-1]
        elsif idx == 0
            arr << num
            prev_num = num
        elsif idx == prev_row.length - 1
            # binding.pry
            arr << prev_num + num
            arr << num
        else
            arr << prev_num + num
            prev_num = num
        end   
    end
    pastel + [arr]
end

print generate(5)