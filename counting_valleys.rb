# hackerrank

def countingValleys(n, s)
    sea_level = 0
    current_status = nil
    valley_count = 0
    
    s.each_char do |char|
        if char == "D"
            current_status = "D" if sea_level == 0
            sea_level -= 1
        else
            current_status = "U" if sea_level == 0
            sea_level += 1
        end
        valley_count += 1 if sea_level == 0 && current_status == "D"
    end
    valley_count
end