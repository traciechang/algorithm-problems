def miniMaxSum(arr)
    arr = arr.sort
    min = arr[0..3].inject(:+)
    max = arr[1..4].inject(:+)
    puts "#{min} #{max}"
end

puts miniMaxSum([1,2,3,4,5])