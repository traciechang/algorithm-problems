# Remove all elements from a linked list of integers that have value val.

# Example:

# Input:  1->2->6->3->4->5->6, val = 6
# Output: 1->2->3->4->5

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    current_node = head
    previous_node = nil
    until current_node.nil?
        if current_node.val == val
            if previous_node.nil?
                head = head.next
            else
                previous_node.next = current_node.next
            end
        else
            previous_node = current_node
        end
        current_node = current_node.next
    end
    head

end