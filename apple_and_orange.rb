# hackerrank

def countApplesAndOranges(s, t, a, b, apples, oranges)
    apple_positions = []
    orange_positions = []
    apple_count = 0
    orange_count = 0

    apples.each do |apple|
        apple_positions << a + apple
    end

    oranges.each do |orange|
        orange_positions << b + orange
    end

    apple_positions.each do |pos|
        apple_count +=1 if (s..t).include? pos
    end

    orange_positions.each do |pos|
        orange_count +=1 if (s..t).include? pos
    end

    puts apple_count
    puts orange_count
end

countApplesAndOranges(7, 11, 5, 15, [-2, 2, 1], [5, -6])