# Write a program that outputs the string representation of numbers from 1 to n.

# But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

# Example:

# n = 15,

# Return:
# [
#     "1",
#     "2",
#     "Fizz",
#     "4",
#     "Buzz",
#     "Fizz",
#     "7",
#     "8",
#     "Fizz",
#     "Buzz",
#     "11",
#     "Fizz",
#     "13",
#     "14",
#     "FizzBuzz"
# ]

def fizz_buzz(n)
    output = []
    
    for i in 1..n do
        if i % 3 == 0 && i % 5 == 0
            output << "FizzBuzz"
        elsif i % 3 == 0
            output << "Fizz"
        elsif i % 5 == 0
            output << "Buzz"
        else
            output << i.to_s
        end
    end
    output
end

# 6/18/19

def fizz_buzz(n)
    count = 1
    output = []
    
    while count <= n
        if count % 3 == 0 && count % 5 == 0
            output << "FizzBuzz"
        elsif count % 3 == 0
            output << "Fizz"
        elsif count % 5 == 0
            output << "Buzz"
        else
            output << count.to_s
        end
        count += 1
    end
    output
end