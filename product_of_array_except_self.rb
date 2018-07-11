# Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

# Example:

# Input:  [1,2,3,4]
# Output: [24,12,8,6]
# Note: Please solve it without division and in O(n).

# Follow up:
# Could you solve it with constant space complexity? (The output array does not count as extra space for the purpose of space complexity analysis.)

require 'pry'

def product_except_self(nums)
    # output = []
    # nums.each_with_index do |n, idx|
    #     product = nil
    #     nums.each_with_index do |num, i|
    #         if i != idx
    #             product = product.nil? ? num : product * num
    #         end
    #     end
    #     output << product
    # end
    # output
    
    output = []
    
    nums.each_with_index do |n, idx|
        first_half = nums[0..idx-1].inject(:*) unless idx == 0
        sec_half = nums[idx+1..-1].inject(:*) unless idx == nums.length-1
        # binding.pry

        if first_half.nil?
            output << sec_half
        elsif sec_half.nil?
            output << first_half
        else
            output << first_half * sec_half
        end
    end
    output
end

puts product_except_self([1,2,3,4])