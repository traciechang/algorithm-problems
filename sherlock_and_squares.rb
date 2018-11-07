# hackerrank

def squares(a, b)
    total_squares = 0
    current_num = Math.sqrt(a).floor
    
    while (current_num * current_num) <= b
        total_squares += 1 if ((current_num * current_num) >= a)
        current_num += 1
    end
    total_squares
end