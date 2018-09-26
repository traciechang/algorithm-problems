# hackerrank

def minimumDistances(a)
    hash = {}
    possible_distances = []
    a.each_with_index do |el, idx|
        if hash.key(el).nil?
            hash[idx] = el
        else
            possible_distances << (hash.key(el) - idx).abs
        end
    end
    output = possible_distances.empty? ? -1 : possible_distances.min
    output
end