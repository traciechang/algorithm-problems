# hackerrank

def viralAdvertising(n)
    total_likes = 0
    day = 1
    recipients = 5

    until day > n
        total_likes += (recipients / 2)
        recipients = (recipients / 2) * 3
        day +=1
    end
    total_likes
end

puts viralAdvertising(3)