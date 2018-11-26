#hackerrank

def bigSorting(unsorted)
    sorted = []

    unsorted.each do |el|
        sorted << el.to_i
    end

    sorted = sorted.sort
    sorted = sorted.map do |el|
        el.to_s
    end
    sorted
end
