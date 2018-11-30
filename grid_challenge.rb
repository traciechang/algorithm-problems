# hackerrank

def gridChallenge(grid)
    alphabetized_grid = []
    alphabetized = "YES"

    grid.each do |str|
        arr = str.split("").sort
        alphabetized_grid << arr
    end

    (0..4).each do |idx|
        temp_arr = []
        alphabetized_grid.each do |str|
            temp_arr << str[idx]
        end
        if temp_arr != temp_arr.sort
            alphabetized = "NO"
            break
        end
    end
    alphabetized
end