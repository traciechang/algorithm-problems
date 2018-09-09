# hackerrank

def birthday(s, d, m)
    total = 0
    
    s.each_with_index do |el, idx|
        total +=1 if s[idx..idx+(m-1)].inject(:+) == d
    end

    total
end

puts birthday([1,2,1,3,2], 3, 2)
# puts birthday([1,1,1,1,1,1], 3,2)
# puts birthday([4], 4, 1)