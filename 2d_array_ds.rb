# hackerrank

def hourglassSum(arr)
    largest_sum = nil

    arr.each_with_index do |sub_arr, idx|
        break if idx == arr.length - 2
        second_sub_arr = arr[idx + 1]
        third_sub_arr = arr[idx + 2]

        sub_arr.each_with_index do |num, i|
            break if i == sub_arr.length - 2
            second_num = sub_arr[i + 1]
            third_num = sub_arr[i + 2]

            temp_sum = num + second_num + third_num + second_sub_arr[i + 1] + third_sub_arr[i] + third_sub_arr[i + 1] + third_sub_arr[i + 2]
            largest_sum = temp_sum if largest_sum.nil? || temp_sum > largest_sum
        end
    end
    largest_sum
end