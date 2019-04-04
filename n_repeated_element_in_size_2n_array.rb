def repeated_n_times(a)
    hash = {}
    n = a.length / 2
    
    a.each do |num|
        hash[num] = hash[num] ? hash[num] + 1 : 1
    end
    
    hash.each do |key, val|
        return key if val == n
    end
end