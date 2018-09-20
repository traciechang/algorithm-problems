# hackerrank

def findDigits(n)
    total= 0
    n.to_s.split("").each do |num|
        total+=1 if n % num.to_i == 0 unless num == "0"
    end
    total
end