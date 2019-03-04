def self_dividing_numbers(left, right)
    result = []

    (left..right).to_a.each do |num|
        self_dividing = true
        num.to_s.split("").each do |n|
            if n == "0"
                self_dividing = false
            elsif num % n.to_i != 0
                self_dividing = false
            end
        end
        result << num if self_dividing
    end
    result
end

# 3/4/19
def self_dividing_numbers(left, right)
    output = []
    
    until left > right
        temp = true
        left.to_s.each_char do |char|
            if char.to_i == 0 || left % char.to_i != 0
                temp = false
                break
            end
        end
        output << left if temp
        left +=1
    end
    output
end

puts self_dividing_numbers(1,22)