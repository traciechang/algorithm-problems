def maximum_product(nums)
    nums.sort!
    last = nums[-1] * nums[-2] * nums[-3]
    front = nums[0] * nums[1] * nums[-1]
    output = last > front ? last : front
end