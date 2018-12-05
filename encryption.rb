# hackerrank

require 'pry'

def encryption(s)
    str_without_spaces = s
    encryption_arr = []
    output = []
    
    # s.each_char do |char|
    #     str_without_spaces << if char != " "
    # end

    str_length = str_without_spaces.length
    n = 1
    n_squared = n**2
    row = nil
    col = nil
    
    until n_squared == str_length || n_squared > str_length
        n += 1
        n_squared = n**2
    end

    if n_squared == str_length
        row = n
        col = n
    else
        row = n - 1
        col = n
    end

    idx = 0

    while idx < str_length
        encryption_arr << str_without_spaces[idx...idx+col]
        idx += col
    end
    
    idx2 = 0

    while idx2 < col
        temp_str = ""
        encryption_arr.each do |str|
            temp_str << str[idx2] unless str[idx2].nil?
        end
        output << temp_str
        idx2 += 1
    end
    output.join(" ")
end

print encryption("haveaniceday")