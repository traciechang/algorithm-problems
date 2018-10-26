# hackerrank

def lonelyinteger(a)
    seen = {}
    
    a.each do |num|
        seen[num] = seen[num] ? seen[num] + 1 : 1
    end
    seen.key(1)
end