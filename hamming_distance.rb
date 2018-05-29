# The Hamming distance between two integers is the number of positions at which the corresponding bits are different.

# Given two integers x and y, calculate the Hamming distance.

# Note:
# 0 ≤ x, y < 231.

# Example:

# Input: x = 1, y = 4

# Output: 2

# Explanation:
# 1   (0 0 0 1)
# 4   (0 1 0 0)
#        ↑   ↑

# The above arrows point to positions where the corresponding bits are different.

def hamming_distance(x, y)
    x_arr = x.to_s(2)
    y_arr = y.to_s(2)
    distance = 0
    length = x_arr.length > y_arr.length ? x_arr.length : y_arr.length
    
    x_arr = x_arr.rjust(length, '0').split("")
    y_arr = y_arr.rjust(length, '0').split("")

    for i in (0..x_arr.length-1) do
        distance += 1 if x_arr[i] != y_arr[i]
    end
    
    distance
end