# hackerrank

def countingSort(arr)
    max_num = arr.max
    new_arr = Array.new(100, 0)

    arr.each do |n|
        new_arr[n] += 1
    end

    new_arr.each do |n|
        print "n "
    end
end
