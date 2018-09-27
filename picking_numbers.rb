# hackerrank

def pickingNumbers(a)
    sorted_a = a.sort
    current_num = nil
    current_idx = nil
    max_length = 0
    
    a.each_with_index do |num, idx|
        if current_num.nil?
            current_num = num
            current_idx = idx
        elsif (num - current_num).abs > 1
            max_length = idx - current_idx if idx - current_idx > max_length
            current_num = a[idx-1]
            current_idx = idx-1
        end
    end
    max_length
end

puts pickingNumbers([4, 6, 5, 3, 3, 1])