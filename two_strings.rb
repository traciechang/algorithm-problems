# hackerrank

def twoStrings(s1, s2)
    s1.each_char do |char|
        return "YES" if s2.include? char
    end
    "NO"
end