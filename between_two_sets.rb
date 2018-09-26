# hackerrank

require 'pry'

def getTotalX(a, b)
    max_of_a = a[-1]
    min_of_b = b[0]
    output = 0
    temp_num = max_of_a

    until temp_num > min_of_b
        is_factor = true
        a[0..-2].each do |n|
 
            if temp_num % n != 0
                is_factor = false
                break
            end
        end
        
        b.each do |n|
            if n % temp_num != 0
                is_factor = false
                break
            end
        end
        output +=1 if is_factor
        temp_num += max_of_a
    end
    output
end

puts getTotalX([2,4],[16,32,96])
# puts getTotalX([2,6],[24,36])