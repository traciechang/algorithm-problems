# Write a function that takes an array of integers and returns their
# sum. Use recursion.

def sum_rec(arr)
    return 0 if arr.empty?
    arr[0] + sum_rec(arr[1..arr.length-1])
end

puts sum_rec([1,2,3])