require 'pry'

def longest_increasing_subsequence(arr)
    arr_length = arr.length
    i = 0
    j = 0

    lis = Array.new(arr_length, 1)

    while i < arr_length
        until j > i
            if arr[i] > arr[j]
                curr_lis = lis[j] + 1
                lis[i] = curr_lis if curr_lis > lis[i]
            end
            j += 1
        end
        i += 1
        j = 0
    end
    lis.max
end

puts longest_increasing_subsequence([10,22,9,33,21,50,41,60])