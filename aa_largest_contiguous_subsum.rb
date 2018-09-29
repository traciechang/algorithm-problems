def largest_contiguous_subsum(arr)
    largest_sum = arr[0]

    arr.each_with_index do |n, idx|
        current_sum = n
        largest_sum = current_sum if current_sum > largest_sum
        arr[idx+1..-1].each do |num|
            current_sum += num
            largest_sum = current_sum if current_sum > largest_sum
        end
    end
    largest_sum
end