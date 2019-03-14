# Given a 32-bit signed integer, reverse digits of an integer.
# Example 1:
# Input: 123
# Output: 321
# Example 2:
# Input: -123
# Output: -321
# Example 3:
# Input: 120
# Output: 21

def reverse(x)
    x = x.to_s
    x = x.reverse
    zeros = 0
    
    if x[x.length-1] == "-"
        x.delete "-"
        x.prepend("-")
    end
    
    if x[0] == "0"
        x.split('').each do |str|
            if str != "0"
                break
            else
                zeros += 1
            end
        end
        x = x[zeros..x.length-1]
    end
    
    if x.to_i > 2147483647 || x.to_i < -2147483648
        return 0
    else
        return x.to_i
    end
    
end

# 3/14/19

def reverse(x)
    new_num = ""
    str_num = x.to_s
    
    if x < 0
        new_num << "-"
        str_num[0] = ""
    end
    
    new_num << str_num.reverse
    output = new_num.to_i
    
    if output > 2147483647 || output < -2147483648
        return 0
    else
        return output
    end
end