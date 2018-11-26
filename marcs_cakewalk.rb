#hackerrank

def marcsCakewalk(calorie)
    sorted_calories = calorie.sort.reverse
    miles = 0

    sorted_calories.each_with_index do |cal, idx|
        m = (2**idx) * cal
        miles += m
    end
    miles
end
