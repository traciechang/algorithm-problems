# hackerrank

def divisibleSumPairs(n, k, ar)
    total = 0

    ar.each_with_index do |el, idx|
        ar[idx+1..-1].each do |el2|
            total +=1 if (el + el2) % k == 0
        end
    end
    total
end

puts divisibleSumPairs(6, 3, [1,3,2,6,1,2])