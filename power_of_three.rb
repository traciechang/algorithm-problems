# Given an integer, write a function to determine if it is a power of three.

# Example 1:

# Input: 27
# Output: true
# Example 2:

# Input: 0
# Output: false
# Example 3:

# Input: 9
# Output: true
# Example 4:

# Input: 45
# Output: false
# Follow up:
# Could you do it without using any loop / recursion?

def is_power_of_three(n)
    return false if n == 0
    while n % 3 == 0
        n /= 3
    end
    n == 1
end

# 3/21/19

def is_power_of_three(n)
    i = 0
    while 3**i <= n
        return true if 3**i == n
        i += 1
    end
    false
end