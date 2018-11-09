# hackerrank

def fairRations(bread)
    loaves_distributed = 0
    
    bread.each_with_index do |person, idx|
        if person % 2 != 0
            if bread[idx + 1].nil?
                return 'NO'
            else
                bread[idx] += 1
                bread[idx + 1] += 1
                loaves_distributed += 2
            end
        end
    end
    loaves_distributed
end