# hackerrank

require 'pry'

def cavityMap(grid)
    new_grid = []
    
    grid.each_with_index do |str, idx|
        if idx == 0 || idx == grid.length - 1
            new_grid << str
        else
            new_str = ""
            str.each_char.with_index do |n, i|
                if i == 0 || i == str.length - 1
                    new_str << n
                else
                    num = n.to_i
                    if num > str[i-1].to_i && num > str[i+1].to_i && num > grid[idx - 1][i].to_i && num > grid[idx + 1][i].to_i
                        new_str << "X"
                    else
                        new_str << n
                    end
                end
            end
            new_grid << new_str
        end
    end
    new_grid
end

puts cavityMap(["1112", "1912", "1892", "1234"])

# 1112
# 1912
# 1892
# 1234