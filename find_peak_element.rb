require 'pry'

# Given an array of integers. Find a peak element in it. An array element is peak if it is NOT smaller than its neighbors. For corner elements, we need to consider only one neighbor. For example, for input array {5, 10, 20, 15}, 20 is the only peak element. For input array {10, 20, 15, 2, 23, 90, 67}, there are two peak elements: 20 and 90. Note that we need to return any one peak element.

def find_peak(arr)
    midpoint = arr.length / 2
    # binding.pry
    if (midpoint == 0 || (arr[midpoint - 1] <= arr[midpoint])) && (arr[midpoint + 1].nil? || (arr[midpoint + 1] <= arr[midpoint]))
        return midpoint
    elsif arr[midpoint - 1] >= arr[midpoint]
        find_peak(arr[0...midpoint])
    elsif arr[midpoint + 1] >= arr[midpoint]
        idx = find_peak(arr[midpoint+1..-1])
        midpoint + 1 + idx
    end
end

# puts find_peak([1,2,3,4,5])
# puts find_peak([5,10,20,15])
puts find_peak([10, 20, 15, 2, 23, 90, 67])
