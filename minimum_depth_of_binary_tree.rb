# leet

# Given a binary tree, find its minimum depth.

# The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

# Note: A leaf is a node with no children.

# Example:

# Given binary tree [3,9,20,null,null,15,7],return its minimum depth = 2.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    return 0 if root.nil?
    
    depth_left = min_depth(root.left)
    depth_right = min_depth(root.right)
    
    if (root.left.nil? && !root.right.nil?) || (!root.left.nil? && root.right.nil?)
        depth = depth_left > depth_right ? depth_left : depth_right
    else
        depth = depth_left > depth_right ? depth_right : depth_left
    end
    1 + depth
end