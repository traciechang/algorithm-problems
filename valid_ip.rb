# Write a method that takes a string as input. It should return true if
# the input is a valid IPv4 address (ie. anything between 0.0.0.0 and
# 255.255.255.255 is valid).

def valid_ip?(str)
    arr = str.split('.')
    return false if arr.length != 4
    arr.each do |el|
        num = el.to_i
        if num.to_s != el || num < 0 || num > 255
            return false
        end
    end
    true
end