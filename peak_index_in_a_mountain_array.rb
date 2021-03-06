# Let's call an array A a mountain if the following properties hold:

# A.length >= 3
# There exists some 0 < i < A.length - 1 such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1]
# Given an array that is definitely a mountain, return any i such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1].

# Example 1:

# Input: [0,1,0]
# Output: 1
# Example 2:

# Input: [0,2,1,0]
# Output: 1
# Note:

# 3 <= A.length <= 10000
# 0 <= A[i] <= 10^6
# A is a mountain, as defined above.

def peak_index_in_mountain_array(a)
    peak_idx = nil
    peak = nil
    a.each_with_index do |n, idx|
        peak_idx = idx if peak_idx == nil
        peak = n if peak == nil
        if n > peak
            peak_idx = idx
            peak = n
        end
    end
    peak_idx
end

# 3/28/19

def peak_index_in_mountain_array(a)
    a.each_with_index do |num, idx|
        return idx if num > a[idx-1] && num > a[idx+1] unless idx == 0 || idx == a.length-1
    end
end