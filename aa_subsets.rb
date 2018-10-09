def subsets(arr)
    subset_arr = [[]]

    arr.each do |n|
        temp_arr = []
        subset_arr.each do |subset|
            temp_arr << subset + [n]
        end
        subset_arr = subset_arr + temp_arr
    end
    subset_arr
end

print subsets([1,2,3])