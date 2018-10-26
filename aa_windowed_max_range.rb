def windowed_max_range(arr, n)
    output = []
    temp = []
    diff = nil
    q = MinMaxStackQ.new

    n.times do
        num = arr.pop
        output << num
        temp << num
        q.enqueue(num)
    end

    diff = q.max - q.min

    until arr.empty?
        temp.shift
        num = arr.pop
        temp << num
        q.enqueue(num)
        q_diff = q.max - q.min
        if q_diff > diff
            diff = q_diff
            output = temp
        end
    end
    output
end