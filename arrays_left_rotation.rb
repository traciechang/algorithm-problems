# hackerrank

def rotLeft(a, d)
    rotated_arr = Array.new(a.length, nil)
    a.each_with_index do |el, idx|
        rotated_arr[idx - d] = el
    end
    rotated_arr
end