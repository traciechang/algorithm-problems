# hackerrank

def beautifulTriplets(d, arr)
    total_triplets = 0
    
    arr.each do |n|
        num1 = n + d
        num2 = num1 + d
        total_triplets += 1 if arr.include?(num1) && arr.include?(num2)
    end
    total_triplets
end