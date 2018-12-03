# hackerrank

def missingNumbers(arr, brr)
    original_hash = {}
    missing_hash = {}
    missing_numbers = []

    brr.each do |num|
        original_hash[num] = original_hash[num] ? original_hash[num] + 1 : 1
    end

    arr.each do |num|
        missing_hash[num] = missing_hash[num] ? missing_hash[num] + 1 : 1
    end

    original_hash.each do |key, val|
        missing_numbers << key if !missing_hash[key] || val - missing_hash[key] != 0
    end
    missing_numbers.sort
end