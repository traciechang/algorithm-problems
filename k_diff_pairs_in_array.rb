require 'pry'

def find_pairs(nums, k)
    arr = []
    
    (0..nums.length-2).each do |i|
        (i+1..nums.length-1).each do |i2|
            if ((nums[i] - nums[i2]).abs == k) && (!arr.include?(nums[i].to_s + nums[i2].to_s) && !arr.include?(nums[i2].to_s + nums[i].to_s))
                arr << nums[i].to_s + nums[i2].to_s
            end
        end
    end
    arr.length
end

print find_pairs([3,1,4,1,5], 2)

# by i

# def find_pairs(nums, k)
#     freq_hash = {}
#     pairs = 0
  
#     nums.each_with_index do |current_num, idx|
#       freq_hash[current_num] ||= 0
#       freq_hash[current_num] += 1
#     end
  
#     freq_hash.each do |current_num, count|
#       if k == 0
#         if count >= 2
#           pairs += 1
#         end
#       else 
#         if freq_hash[current_num + k]
#           pairs += 1
#         end
#       end
#     end
  
#     pairs
#   end