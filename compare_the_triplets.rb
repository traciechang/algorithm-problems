# hackerrank

# 7/15/19

def compareTriplets(a, b)
    alice = 0
    bob = 0

    a.each_with_index do |n, idx|
        if n > b[idx]
            alice += 1
        elsif n < b[idx]
            bob += 1
        end
    end
    [alice,bob]
end