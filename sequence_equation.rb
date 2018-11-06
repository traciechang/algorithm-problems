# hackerrank

require 'pry'

def permutationEquation(p)
    output = Array.new(p.length, nil)

    (1..p.length).each do |n|
        idx = p.find_index(n) + 1
        idx2 = p.find_index(idx) + 1
        output[n-1] = idx2
    end
    output
end

puts permutationEquation([4,3,5,1,2])