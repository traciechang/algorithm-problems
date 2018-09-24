# hackerrank

def equalizeArray(arr)
    length_of_arr = arr.length
    hash = {}
    max_value = 0
    
    arr.each do |num|
        hash[num] = hash[num] ? hash[num] + 1 : 1
    end
    
    hash.each do |key, val|
        max_value = val if val > max_value
    end
    length_of_arr - max_value
end