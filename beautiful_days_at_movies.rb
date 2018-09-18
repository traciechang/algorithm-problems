# hackerrank

def beautifulDays(i, j, k)
    total_beautiful_days = 0

    (i..j).each do |day|
        reversed_day = day.to_s.reverse.to_i
        total_beautiful_days +=1 if (day - reversed_day).abs % k == 0
    end
    total_beautiful_days
end

puts beautifulDays(20, 23, 6)