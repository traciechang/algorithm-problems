# leetcode

# Input: A = [1,2,3,4], queries = [[1,0],[-3,1],[-4,0],[2,3]]
# Output: [8,6,2,4]
# Explanation: 
# At the beginning, the array is [1,2,3,4].
# After adding 1 to A[0], the array is [2,2,3,4], and the sum of even values is 2 + 2 + 4 = 8.
# After adding -3 to A[1], the array is [2,-1,3,4], and the sum of even values is 2 + 4 = 6.
# After adding -4 to A[0], the array is [-2,-1,3,4], and the sum of even values is -2 + 4 = 2.
# After adding 2 to A[3], the array is [-2,-1,3,6], and the sum of even values is -2 + 6 = 4.

def sum_even_after_queries(a, queries)
    output = []
    mod_a = a.dup
    current_sum = 0
    
    mod_a.each do |n|
        current_sum += n if n % 2 == 0
    end
    
    queries.each do |query|
        idx = query[1]
        new_n = mod_a[idx] + query[0]
        current_sum -= mod_a[idx] if mod_a[idx] % 2 == 0
        mod_a[idx] = new_n
        current_sum += new_n if new_n % 2 == 0
        output << current_sum
    end
    output
end