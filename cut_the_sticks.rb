# hackerrank

def cutTheSticks(arr)
    output = []
    arr_copy = arr
    
    until arr_copy.empty?
        min_stick = arr_copy.min
        temp_arr = []
        output << arr_copy.length
        arr_copy.each do |stick|
            temp_arr << stick - min_stick if stick != min_stick
        end
        arr_copy = temp_arr
    end
    output
end