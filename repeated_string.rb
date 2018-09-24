# hackerrank

def repeatedString(s, n)
    as_in_s = 0
    length_of_s = s.length
    
    s.each_char do |char|
        as_in_s +=1 if char == "a"
    end
    
    remainder = n % length_of_s
    multiple = n / length_of_s
    
    total_as = multiple * as_in_s
    s[0...remainder].each_char do |char|
        total_as +=1 if char == "a"
    end
    total_as
end