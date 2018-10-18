def look_and_say(arr)
    curr_num = nil
    counter = 0
    output = []

    arr.each do |n|
        if n == curr_num
            counter +=1
        else
            if curr_num.nil?
                curr_num = n
                counter +=1
            else
                output << [counter, curr_num]
                curr_num = n
                counter = 1
            end
        end
    end
    output << [counter, curr_num]
    output
end

# print look_and_say([1])
# print look_and_say([1,1])
# print look_and_say([2,1])
print look_and_say([1,2,1,1])
