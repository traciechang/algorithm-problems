require 'pry'

def largest_time_from_digits(a)
    output = []
    max_time = [2,3,5,9]
    nums_left = a
    
    idx = 0
    while idx <= 3
        n = max_time[idx]
        while n >= 0
            nums_left.each_with_index do |num, i|
                if num == n
                    output << num
                    nums_left.delete_at(i)
                    n = -1
                end
            end
            n -= 1
        end
        idx += 1
    end
    
    if output.length == 4
        output = output.join("")
        output[0..1] + ":" + output[2..3]
    else
        ""
    end
end

puts largest_time_from_digits([1,2,3,4])