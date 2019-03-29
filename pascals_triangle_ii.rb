# leetcode

# Given a non-negative index k where k ≤ 33, return the kth index row of the Pascal's triangle.

# Note that the row index starts from 0.

# Example:

# Input: 3
# Output: [1,3,3,1]

# 3/29/19

def get_row(row_index)
    return [1] if row_index == 0
    
    arr = []
    prev_row = get_row(row_index - 1)
    
    prev_row.each_with_index do |num, idx|
        if idx == 0
            arr << num
        elsif idx == prev_row.length - 1
            arr << num + prev_row[idx-1]
            arr << num
        else
            arr << num + prev_row[idx-1]
        end
    end
    arr << prev_row[-1] if prev_row.length == 1
    arr
end