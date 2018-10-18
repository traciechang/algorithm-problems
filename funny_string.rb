def funnyString(s)
    reversed_str = s.reverse
    
    str_values = []
    reversed_str_values = []
    str_differences = []
    reversed_str_differences = []
    
    s.each_char do |char|
        str_values << char.ord
    end
    
    reversed_str.each_char do |char|
        reversed_str_values << char.ord
    end
    
    str_values.each_with_index do |n, idx|
        str_differences << (n - str_values[idx + 1]).abs unless idx == str_values.length - 1
    end
    
    reversed_str_values.each_with_index do |n, idx|
        unless idx == reversed_str_values.length - 1
            if (n - reversed_str_values[idx + 1]).abs != str_differences[idx]
                return 'Not Funny'
            end
        end
    end
    'Funny'
end

# print funnyString("acxz")
print funnyString("bcxz")