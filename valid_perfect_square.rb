# Given a positive integer num, write a function which returns True if num is a perfect square else False.

# Note: Do not use any built-in library function such as sqrt.

# Example 1:

# Input: 16
# Returns: True
# Example 2:

# Input: 14
# Returns: False

def is_perfect_square(num)
    unit = [2, 3, 7, 8]
    if unit.include?(num.to_s[-1].to_i)
        return false
    else
        (1..num).each do |i|
            if i ** 2 == num
                return true
                break
            end
        end
    end
    false
end

puts is_perfect_square(2147483647)