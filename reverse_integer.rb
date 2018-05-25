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
    
    x.to_i
end