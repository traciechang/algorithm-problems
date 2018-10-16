def weighted_random_index(arr)
    sum = arr.inject(:+)
    random_number = rand(sum)

    temp = 0
    arr.each_with_index do |n, idx|
        temp += n
        if random_number < temp
            return idx
        end
    end
end