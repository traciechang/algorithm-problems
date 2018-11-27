# hackerrank

def strangeCounter(t)
    time = 1
    value = 3
    prev_time = nil
    prev_value = nil

    while time < t
        prev_time = time
        prev_value = value
        time += value
        value *= 2
    end

    return value if time == t
    diff = t - prev_time
    prev_value - diff
end
