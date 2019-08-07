# leetcode

# 8/7/19

def find_duplicate(nums)
    hash = {}
    
    nums.each do |n|
        hash[n] = hash[n] ? hash[n] + 1 : 1
    end
    
    hash.each do |key, val|
        return key if val != 1
    end
end