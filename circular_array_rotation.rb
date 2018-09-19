# hackerrank

def circularArrayRotation(a, k, queries)
    output = queries.map do |idx|
        a[(idx + k - 1) % a.length]
    end
    output
    # arr = a

    # k.times do
    #     temp_arr = []
    #     temp_arr << arr.pop
    #     arr.each do |el|
    #         temp_arr << el
    #     end
    #     arr = temp_arr
    # end
    
    # output = queries.map do |idx|
    #     arr[idx]
    # end
    # output
end

puts circularArrayRotation([1,2,3],2,[0,1,2])
# 2,3,1
# idx = 0, 0 + 2 == 2, 2-1=1, 1 % 3 == 1
# idx = 1, 1 + 2 == 3, 3-1=2, 2 %3 == 2
# idx = 2, 2 + 2 == 4, 4-1=3, 3 % 3 == 0

puts circularArrayRotation([3,4,5], 2, [1,2])
# 5,3
# idx 1, 1 + 2 == 3, 3-1 = 2, 2 % 3 == 2
# idx 2, 2 + 2 == 4, 4-1=3, 3 %3 == 0