# hackerrank

def saveThePrisoner(n, m, s)
    output = (s + m - 1) % n
    output = output == 0 ? n : output
    output
end

puts saveThePrisoner(5,2,1)
puts saveThePrisoner(5,2,2)
puts saveThePrisoner(7,19,2)
puts saveThePrisoner(3,7,3)

puts saveThePrisoner(4,17,4)