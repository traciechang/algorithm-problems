# hackerrank

def hurdleRace(k, height)
    max_height = height.max
    max_height > k ? max_height - k : 0
end