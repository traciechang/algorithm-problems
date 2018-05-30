# Given two arrays, write a function to compute their intersection.

# Example:
# Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].

# Note:
# Each element in the result must be unique.
# The result can be in any order.

def intersection(nums1, nums2)
    nums1_uniq = nums1.uniq
    nums2_uniq = nums2.uniq
    
    nums1_uniq.select { |n| nums2_uniq.include?(n) }
end