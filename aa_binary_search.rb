def binary_search(arr, target)
    return -1 if arr.length == 0
    midpoint = arr.length / 2

    if arr[midpoint] == target
        return midpoint
    elsif arr[midpoint] > target
        binary_search(arr[0...midpoint], target)
    else
        ans = binary_search(arr[midpoint+1..-1], target)
        ans == -1 ? -1 : midpoint + 1 + ans
    end
end

puts binary_search([1,2,3,4,5], 5)