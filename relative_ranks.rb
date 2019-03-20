# leetcode

# Given scores of N athletes, find their relative ranks and the people with the top three highest scores, who will be awarded medals: "Gold Medal", "Silver Medal" and "Bronze Medal".

# Example 1:
# Input: [5, 4, 3, 2, 1]
# Output: ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
# Explanation: The first three athletes got the top three highest scores, so they got "Gold Medal", "Silver Medal" and "Bronze Medal". 
# For the left two athletes, you just need to output their relative ranks according to their scores.
# Note:
# N is a positive integer and won't exceed 10,000.
# All the scores of athletes are guaranteed to be unique.

# 3/20/19

def find_relative_ranks(nums)
    output = Array.new(nums.length, nil)
    sorted_nums = nums.sort
    rank = nums.length
    
    sorted_nums.each do |n|
        idx = nums.find_index(n)
        
        ranking = case rank
            when 1
               "Gold Medal"
            when 2
                "Silver Medal"
            when 3
                "Bronze Medal"
        else
            rank.to_s
        end
        
        output[idx] = ranking
        rank -= 1
    end
    output
end