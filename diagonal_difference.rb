def diagonalDifference(arr)
    diag1_sum = 0
    diag2_sum = 0
    diag1_counter = 0
    diag2_counter = arr.length-1
    
    arr.each do |ar|
        diag1_sum += ar[diag1_counter]
        diag2_sum += ar[diag2_counter]
        
        diag1_counter +=1
        diag2_counter -=1
    end
    
    diff = diag1_sum - diag2_sum
    # if it's not negative, you return nil
    diff = diff * -1 if diff < 0
    diff
end

# array = [[11,2,4],[4,5,6],[10,8,-12]]
# array = [[1,2,3],[4,5,6],[9,8,9]]
array = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]
puts diagonalDifference(array)