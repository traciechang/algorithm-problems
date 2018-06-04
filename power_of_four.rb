# Given an integer (signed 32 bits), write a function to check whether it is a power of 4.

# Example:
# Given num = 16, return true. Given num = 5, return false.

# Follow up: Could you solve it without loops/recursion?

def is_power_of_four(num)
    return false if num == 0
    num /= 4 while num % 4 == 0
    num == 1
end