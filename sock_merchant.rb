# hackerrank

def sockMerchant(n, ar)
    hash = {}
    total_pairs = 0

    ar.each do |sock|
        hash[sock] = hash[sock] ? hash[sock] + 1 : 1
    end

    hash.each do |key, val|
        total_pairs += val / 2
    end
    total_pairs
end

# puts sockMerchant(9, [10,20,20,10,10,30,50,10,20])
puts sockMerchant(7, [1,2,1,2,1,3,2])