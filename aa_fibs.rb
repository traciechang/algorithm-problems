# Write a function, fibs(num) which returns the first n elements from
# the fibonnacci sequence, given n. Solve it both iteratively and recursively.

def fibs(num)
    arr = [0,1]
    counter = 2
    return [0] if num == 1

    until counter == num
        arr << arr[-1] + arr[-2]
        counter +=1
    end
    arr
end

# print fibs(5)

def fibs_recursive(num)
    return [0] if num == 1
    return [0,1] if num == 2

    arr = fibs_recursive(num - 1)
    arr + [arr[-1] + arr[-2]]
end

# print fibs_recursive(5)


# hackerrank
def fibonacci(n)
    arr = fib(n)
    arr[-1]
end

def fib(n)
    return [0, 1] if n == 1
    
    arr = fib(n - 1)
    arr + [arr[-1] + arr[-2]]
end

print fibonacci(5)