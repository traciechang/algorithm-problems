# 4/5/19

def is_monotonic(a)
    monotonic = true
    prev_num = nil
    increasing = false
    decreasing = false
    
    a.each do |n|
        if prev_num.nil?
            prev_num = n
        elsif n > prev_num && !increasing && !decreasing
            increasing = true
        elsif n < prev_num && !increasing && !decreasing
            decreasing = true
        elsif (n > prev_num && decreasing) || (n < prev_num && increasing)
            return false
        end  
        prev_num = n
    end
    true
end