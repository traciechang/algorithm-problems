# hackerrank

def insertionSort1(n, arr)
    target = arr.pop
    temp = nil
    
    (arr.length - 1).downto(0).each do |idx|
        if arr[idx] > target
            arr[idx + 1] = arr[idx]
            puts arr.join(" ")
        else
            arr[idx + 1] = target
            puts arr.join(" ")
            break
        end
    end
    if target < arr[0]
        arr[0] = target
        puts arr.join(" ")
    end
end