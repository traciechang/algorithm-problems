# hackerrank

def stringConstruction(s)
    total_charge = 0
    p = ""
    
    s.each_char do |char|
        total_charge += 1 if !p.include?(char)
        p << char
    end
    total_charge
end