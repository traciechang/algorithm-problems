# hackerrank

def quickSort(arr)
    p = arr[0]
    left = 1
    right = arr.length - 1
    
    until left > right
        if arr[left] > p && arr[right] < p
            temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp
        elsif arr[left] < p
            left += 1
        elsif arr[right] > p
            right -= 1
        end
    end
    arr[0] = arr[right]
    arr[right] = p
    arr
end