# hackerrank

def chocolateFeast(n, c, m)
    total_chocolates = 0
    current_wrappers = 0
    
    total_chocolates += n / c
    current_wrappers += n/c
    
    until current_wrappers < m
        exchangeable_chocs = current_wrappers/m
        total_chocolates += exchangeable_chocs
        current_wrappers = (current_wrappers % m) + exchangeable_chocs
    end
    total_chocolates
end

puts chocolateFeast(10,2,5)
puts chocolateFeast(12,4,4)
puts chocolateFeast(6,2,2)