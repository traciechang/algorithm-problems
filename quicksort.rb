def quicksort(arr, left_idx, right_idx)
    if arr.length > 1
        pivot_idx = partition(arr, left_idx, right_idx)

        quicksort(arr, left_idx, pivot_idx - 1) if left_idx < pivot_idx - 1
        quicksort(arr, pivot_idx + 1, right_idx) if pivot_idx < right_idx
    end
    arr
end

def partition(arr, left_idx, right_idx)
    pivot = arr[right_idx]
    left = left_idx
    right = right_idx - 1

    until left > right
        if arr[left] > pivot && arr[right] < pivot
            swap(arr, left, right)
            left += 1
            right -= 1
        end
        
        if arr[left] < pivot
            left += 1
        end

        if arr[right] > pivot
            right -=1
        end
    end
    swap(arr, left, right_idx)
    left
end

def swap(arr, left, right)
    temp_reference = arr[left]
    arr[left] = arr[right]
    arr[right] = temp_reference
end

arr = [19, 22, 63, 105, 2, 46]
puts quicksort(arr, 0 , arr.length - 1)
# arr = [9,5,2,6,1,11,3]
# puts quicksort(arr, 0, arr.length - 1)