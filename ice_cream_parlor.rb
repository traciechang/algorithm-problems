# hackerrank

def icecreamParlor(m, arr)
    seen = {}
    
    arr.each_with_index do |cost, idx|
        if seen[cost]
            return seen[cost], idx + 1
        else
            seen[m - cost] = idx + 1
        end
    end
end