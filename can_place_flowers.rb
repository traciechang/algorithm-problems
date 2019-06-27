# Suppose you have a long flowerbed in which some of the plots are planted and some are not. However, flowers cannot be planted in adjacent plots - they would compete for water and both would die.

# Given a flowerbed (represented as an array containing 0 and 1, where 0 means empty and 1 means not empty), and a number n, return if n new flowers can be planted in it without violating the no-adjacent-flowers rule.

# Example 1:
# Input: flowerbed = [1,0,0,0,1], n = 1
# Output: True
# Example 2:
# Input: flowerbed = [1,0,0,0,1], n = 2
# Output: False
# Note:
# The input array won't violate no-adjacent-flowers rule.
# The input array size is in the range of [1, 20000].
# n is a non-negative integer which won't exceed the input array size.

def can_place_flowers(flowerbed, n)
    counter = 0
    
    flowerbed.each_with_index do |f, idx|
        if idx == 0 && f == 0
            if flowerbed[1] != 1
                counter +=1
                flowerbed[idx] = 1
            end
        elsif idx == flowerbed.length-1 && f == 0
            if flowerbed[flowerbed.length-2] == 0
                counter +=1
                flowerbed[idx] = 1
            end
        elsif f == 0
            if flowerbed[idx-1] == 0 && flowerbed[idx+1] == 0
                counter +=1
                flowerbed[idx] = 1
            end
        end
    end
    
    counter >= n
end

# 6/27/19

def can_place_flowers(flowerbed, n)
    return true if n == 0
    planted = 0
    
    flowerbed.each_with_index do |plot, idx|
        if plot == 0
            if idx == 0 && flowerbed[idx + 1] == 0
                planted += 1
                flowerbed[idx] = 1
            elsif idx == flowerbed.length - 1 && flowerbed[idx-1] == 0
                planted += 1
                flowerbed[idx] = 1
            elsif flowerbed[idx-1] == 0 && flowerbed[idx+1] == 0
                planted += 1
                flowerbed[idx] = 1
            end
        end
        return true if planted == n
    end
    false
end