# leetcode

# 9/5/19

def find_disappeared_numbers(nums)
    output = []
    n = 1
    l = nums.length
    
    while n <= l
        output << n if !nums.include?(n)
        n += 1
    end
    output
end