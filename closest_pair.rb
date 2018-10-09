# aa -> geeks for geeks

# Given a sorted array and a number x, find the pair in array whose sum is closest to x

# Examples:

# Input: arr[] = {10, 22, 28, 29, 30, 40}, x = 54
# Output: 22 and 30

# Input: arr[] = {1, 3, 4, 7, 10}, x = 15
# Output: 4 and 10

def closest_pair(arr, k)
    diff = nil
    left_index = 0
    right_index = arr.length - 1
    left_ans = nil
    right_ans = nil

    until left_index == right_index
        left_num = arr[left_index]
        right_num = arr[right_index]
        curr_sum = left_num + right_num
        curr_diff = k - curr_sum
        if (diff.nil? && curr_diff >= 0) || (curr_diff < diff && curr_diff >= 0)
            diff = curr_diff
            left_ans = left_num
            right_ans = right_num
        end

        if curr_sum > k
            right_index -=1
        else
            left_index +=1
        end
    end
    [left_ans, right_ans]
end

print closest_pair([10,22,28,29,30,40], 54)
print closest_pair([1, 3, 4, 7, 10], 15)