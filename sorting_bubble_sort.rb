# hackeerrank

def countSwaps(a)
    swaps = 0
    swapped = true

    until !swapped
        swapped = false
        a.each_with_index do |num, idx|
            break if idx == a.length - 1
            if num > a[idx + 1]
                a[idx] = a[idx + 1]
                a[idx + 1] = num
                swaps += 1
                swapped = true
            end
        end
    end

    ["Array is sorted in #{swaps} swaps.", "First Element: #{a[0]}", "Last Element: #{a[-1]}"]
end