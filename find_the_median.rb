# hackerrank

def findMedian(arr)
    arr_length = arr.length
    middle = arr_length / 2
    sorted_arr = arr.sort
    
    if arr_length % 2 == 0
        (sorted_arr[middle - 1] + sorted_arr[middle]) / 2
    else
        sorted_arr[middle]
    end
end