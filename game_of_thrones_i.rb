# hackerrank

def gameOfThrones(s)
    seen = {}
    odd_values = 0
    
    s.each_char do |char|
        seen[char] = seen[char] ? seen[char] + 1 : 1
    end

    seen.each do |key, val|
        odd_values += 1 if val % 2 != 0
    end
    odd_values > 1 ? "NO" : "YES"
end