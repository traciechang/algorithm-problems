require 'pry'

def find_pairs(nums, k)
    arr = []
    
    (0..nums.length-2).each do |i|
        (i+1..nums.length-1).each do |i2|
            # binding.pry
            if ((nums[i] - nums[i2]).abs == k) && (!arr.include?(nums[i].to_s + nums[i2].to_s) && !arr.include?(nums[i2].to_s + nums[i].to_s))
                arr << nums[i].to_s + nums[i2].to_s
            end
        end
    end
    arr.length
end

print find_pairs([3,1,4,1,5], 2)