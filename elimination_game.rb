# leetcode

# 7/31/19

def last_remaining(n)
    arr = (1..n).to_a
    output = []
    left = true
    
    until arr.length == 1
        if left
            arr.each_with_index do |num, idx|
                output << num if (idx+1) % 2 == 0
            end
            left = false
            arr = output
            output = []
        else
            l = arr.length
            if l % 2 == 0
                arr.each_with_index do |num, idx|
                    output << num if (idx+1) % 2 != 0
                end
            else
                arr.each_with_index do |num, idx|
                    output << num if (idx+1) % 2 == 0
                end
            end
            left = true
            arr = output
            output = []
        end
    end
    arr[0]
end