# leet

# Given a sorted linked list, delete all duplicates such that each element appear only once.

# Example 1:

# Input: 1->1->2
# Output: 1->2
# Example 2:

# Input: 1->1->2->3->3
# Output: 1->2->3

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    seen = {}
    current_node = head
    prev_node = nil
    
    until current_node.nil?
        if seen[current_node.val]
            prev_node.next = current_node.next
        else
            seen[current_node.val] = true
            prev_node = current_node
        end
        current_node = current_node.next
    end
    head
end