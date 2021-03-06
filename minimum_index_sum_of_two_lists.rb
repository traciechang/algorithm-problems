# Suppose Andy and Doris want to choose a restaurant for dinner, and they both have a list of favorite restaurants represented by strings.

# You need to help them find out their common interest with the least list index sum. If there is a choice tie between answers, output all of them with no order requirement. You could assume there always exists an answer.

# Example 1:
# Input:
# ["Shogun", "Tapioca Express", "Burger King", "KFC"]
# ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
# Output: ["Shogun"]
# Explanation: The only restaurant they both like is "Shogun".
# Example 2:
# Input:
# ["Shogun", "Tapioca Express", "Burger King", "KFC"]
# ["KFC", "Shogun", "Burger King"]
# Output: ["Shogun"]
# Explanation: The restaurant they both like and have the least index sum is "Shogun" with index sum 1 (0+1).
# Note:
# The length of both lists will be in the range of [1, 1000].
# The length of strings in both lists will be in the range of [1, 30].
# The index is starting from 0 to the list length minus 1.
# No duplicates in both lists.

def find_restaurant(list1, list2)
    hash1 = {}
    least_idx_sum = nil
    output = []
    
    list1.each_with_index do |el, idx|
        hash1[el] = idx
    end
    
    list2.each_with_index do |el, idx|
        if hash1[el]
            sum = idx + hash1[el]
            if least_idx_sum.nil?
                least_idx_sum = sum
                output << el
            elsif sum < least_idx_sum
                least_idx_sum = sum
                output = []
                output << el
            elsif sum == least_idx_sum
                output << el
            end
        end
    end
    output
end

# 4/8/19

def find_restaurant(list1, list2)
    hash1 = {}
    hash2 = {}
    rest = []
    
    list1.each_with_index do |el, idx|
        hash1[el] = idx
    end
    
    list2.each_with_index do |el, idx|
        hash2[el] = hash1[el] + idx if hash1[el]
    end
    
    min_idx_sum = hash2.values.min
    
    hash2.each do |key, val|
        rest << key if val == min_idx_sum
    end
    rest
end