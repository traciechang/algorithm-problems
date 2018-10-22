# hackerrank

def marsExploration(s)
    altered_chars = 0
    sos = "SOS"
    idx = 0
    
    s.each_char do |char|
        idx = 0 if idx > 2
        altered_chars += 1 if char != sos[idx]
        idx += 1
    end
    
    altered_chars
end