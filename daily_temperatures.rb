# leetcode 

# 7/31/19

def daily_temperatures(t)
    output = []
    
    t.each_with_index do |temp, idx|
        output << check_days(t, temp, idx)
    end
    
    output
end

def check_days(t, temp, idx)
    t[idx+1...t.length].each_with_index do |temp2, idx2|
            if temp2 > temp
                return idx2 + 1
            end
        end
    return 0
end