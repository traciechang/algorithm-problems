# hackerrank

def gemstones(arr)
    total_gemstones = 0
    minerals = {}

    arr[0].each_char do |char|
        minerals[char] = 1
    end

    minerals.each do |key, val|
        is_gem = true
        (1..arr.length - 1).each do |i|
            is_gem = false if !arr[i].include?(key)
        end
        total_gemstones += 1 if is_gem
    end

    total_gemstones
end
