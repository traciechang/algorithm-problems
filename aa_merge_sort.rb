# require 'pry'
require 'pry-nav'

def merge_sort(arr)
    arr_length = arr.length

    return arr if arr_length == 1

    midpoint = arr_length / 2
    left = arr[0...midpoint]
    right = arr[midpoint..-1]

    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)
    merge(sorted_left, sorted_right)
end

def merge(left, right)
    sorted_arr = []
    # binding.pry
    until left.empty? || right.empty?
        if left[0] < right[0]
            sorted_arr << left.shift
        else
            sorted_arr << right.shift
        end
    end
    sorted_arr + left + right
end

puts merge_sort([3,2,1,4])