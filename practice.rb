require 'pry'

def merge_sort(arr)
end

def binary_search(arr, target)
    return -1 if arr.empty?
    midpoint = arr.length / 2

    if target == arr[midpoint]
        return midpoint
    elsif target < arr[midpoint]
        binary_search(arr[0...midpoint], target)
    else
        idx = binary_search(arr[midpoint + 1..-1], target)
        idx == -1 ? -1 : midpoint + idx + 1
    end
end

def quicksort(arr, left_idx, right_idx)
    
end


# print merge_sort([3,5,2,4,1])
print binary_search([1,2,3,4,5,6], 8)
# print quicksort([3,5,2,4,1])