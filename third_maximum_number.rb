# Given a non-empty array of integers, return the third maximum number in this array. If it does not exist, return the maximum number. The time complexity must be in O(n).

# Example 1:
# Input: [3, 2, 1]

# Output: 1

# Explanation: The third maximum is 1.
# Example 2:
# Input: [1, 2]

# Output: 2

# Explanation: The third maximum does not exist, so the maximum (2) is returned instead.
# Example 3:
# Input: [2, 2, 3, 1]

# Output: 1

# Explanation: Note that the third maximum here means the third maximum distinct number.
# Both numbers with value 2 are both considered as second maximum.

def third_max(nums)
    first = nil
    second = nil
    third = nil
    
    nums.each do |n|
        next if first == n || second == n || third == n
        
        if first == nil || n > first
            third = second
            second = first
            first = n
        elsif second == nil || n > second
            third = second
            second = n
        elsif third == nil || n > third
            third = n
        end
    end
    
    third ? third : first
end

# 2/22/19

def third_max(nums)
    first = nil
    sec = nil
    third = nil
    
    nums.each do |num|
        if first.nil? ||num >= first
            next if num == first
            third = sec
            sec = first
            first = num
        elsif sec.nil? || num >= sec
            next if num == sec
            third = sec
            sec = num
        elsif third.nil? || num >= third
            next if num == third
            third = num
        end
    end
    
    third || first
end