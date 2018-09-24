# You are given an array and a random number generator. Shuffle the
# array.

def shuffle(arr)
    arr_copy = arr
    counter = arr.length
    new_arr = []

    until counter == 0
        idx = rand(counter)
        new_arr << arr_copy[idx]
        arr_copy = arr_copy[0..idx-1] + arr_copy[idx+1..-1]
        counter -=1
    end
    new_arr
end