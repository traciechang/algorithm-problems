# We define the Perfect Number is a positive integer that is equal to the sum of all its positive divisors except itself.

# Now, given an integer n, write a function that returns true when it is a perfect number and false when it is not.
# Example:
# Input: 28
# Output: True
# Explanation: 28 = 1 + 2 + 4 + 7 + 14
# Note: The input number n will not exceed 100,000,000. (1e8)

def check_perfect_number(num)
    arr = []
    
    (1..num-1).each do |n|
        break if arr.include?(n)
        
        if (num % n == 0)
            arr << n
            arr << num % n
        end
    end
    
    arr.inject(:+) == num
end

# puts check_perfect_number(28)
# puts check_perfect_number(24036583)
puts check_perfect_number(20996011)

# 3/25/19

def check_perfect_number(num)
    sum = 1
    divisor = 2
    midpoint = num / 2
    
    while divisor <= midpoint
        sum += divisor if num % divisor == 0
        divisor += 1
    end
    sum == num
end