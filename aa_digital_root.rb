# Write a method, digital_root(num). It should sum the digits of a
# positive integer. If it is greater than or equal to 10, sum the digits of the
# resulting number. Keep repeating until there is only one digit in the
# result, called the "digital root". Do not use string conversion within
# your method.

def digital_root(num)
    array = []

    until num == 0
        array << num % 10
        num = num / 10
    end
    result = array.inject(:+)

    if result > 9
        digital_root(result)
    else
        result
    end
end