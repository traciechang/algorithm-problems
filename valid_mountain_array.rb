# leetcode
# 2/14/19

require 'pry'

# def valid_mountain_array(a)
#     return false if a.length < 3
    
#     prev = nil
#     decreasing = false
    
#     a.each do |n|
#         if prev.nil?
#             prev = n
#         else
#             if n < prev && !decreasing
#                 prev = n
#                 decreasing = true
#             elsif (n >= prev && decreasing) || (n <= prev && !decreasing)
#                 return false
#             else
#                 prev = n
#             end
#         end
#     end
#     decreasing ? true : false
# end

def valid_mountain_array(a)
    peak = a.max
    return false if a.length < 3 || a[0] == peak || a[-1] == peak
    prev = nil
    reached_peak = false
    
    a.each do |n|
        if prev.nil?
            prev = n
        elsif n >= prev && reached_peak || n <= prev && !reached_peak
            return false
        else
            prev = n
        end
        
        reached_peak = true if n == peak
    end
    true
end

puts valid_mountain_array([2,1])
puts valid_mountain_array([3,5,5])
puts valid_mountain_array([0,3,2,1])
puts valid_mountain_array([0,1,2,3,4,5,6,7,8,9])
puts valid_mountain_array([14,82,89,84,79,70,70,68,67,66,63,60,58,54,44,43,32,28,26,25,22,15,13,12,10,8,7,5,4,3])

# if not decreasing, n is allowed to be > than prev
# if decreasing, n is allowed to be < than prev
# if decreasing, n needs to be < than prev
# if not decreasing, n needs to be > than prev