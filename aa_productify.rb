# Given a list of numbers in an array, replace all the numbers with the
# product of all other numbers. Do this in O(n) time without using
# division.

def productify(arr)
    orig = arr.dup
    accum = 1

    (0..arr.length-1).each do |idx|
        num = arr[idx]
        arr[idx] = accum
        accum *= num
    end

    accum = 1
    (arr.length-1).downto(0).each do |idx|
        arr[idx] *= accum
        accum *= orig[idx]
    end
    arr
end

puts productify([1,2,3,4])