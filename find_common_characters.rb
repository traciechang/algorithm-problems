# leetcode

# 8/8/19

def common_chars(a)
    arr = []
    
    a.each do |str|
        temp_arr = []
        if arr.empty?
            temp_arr = str.split("")
        else
            str.each_char do |char|
                if arr.include?(char)
                    temp_arr << char
                    arr.delete_at(arr.index(char))
                end
            end
        end
        arr = temp_arr
    end
    arr
end