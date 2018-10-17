def pageCount(n, p)
    middle = n / 2
    middle = middle % 2 == 0 ? middle + 1 : middle
    count_beg = 1
    count_end = n % 2 == 0 ? n + 1 : n
    total_turns = 0
    
    if p <= middle
        until count_beg >= p
            count_beg += 2
            total_turns += 1
        end
    else
        until count_end <= p
            count_end -= 2
            total_turns += 1
        end
        total_turns = count_end == p ? total_turns : total_turns - 1
    end
    total_turns
end

puts pageCount(5, 4)