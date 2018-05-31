# Given an integer, write a function to determine if it is a power of two.

# Example 1:

# Input: 1
# Output: true
# Example 2:

# Input: 16
# Output: true
# Example 3:

# Input: 218
# Output: false

def is_power_of_two(n)
    return false if n == 0 || n < 0
    until n <= 2
        if n % 2 == 0
            n = n / 2
        else
            return false
        end
    end
    true
end