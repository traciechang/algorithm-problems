require 'pry'

def search_rotated_array(arr, target)
    return 0 if arr[0] == target
    pivot = find_pivot(arr)

    if arr[0] > target
        idx = binary_search(arr[pivot+1..-1], target)
        pivot + 1 + idx
    else
        binary_search(arr[0..pivot], target)
    end
end

def binary_search(arr, target)
    return -1 if arr.empty?
    midpoint = arr.length / 2

    if arr[midpoint] == target
        return midpoint
    elsif arr[midpoint] > target
        binary_search(arr[0...midpoint], target)
    else
        idx = binary_search(arr[midpoint+1..-1], target)
        idx == -1 ? -1 : midpoint + 1 + idx
    end
end

def find_pivot(arr)
    arr.each_with_index do |n, idx|
        return idx if arr[idx + 1] < n
    end
end

puts search_rotated_array([5,6,7,8,1,2,3,4], 6)