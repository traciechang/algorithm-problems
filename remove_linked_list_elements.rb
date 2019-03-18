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

# 3/18/19

def remove_elements(head, val)
    curr_node = head
    prev_node = nil
    
    until curr_node.nil?
        if prev_node.nil? && curr_node.val == val
            temp_node = curr_node
            curr_node = curr_node.next
            head = curr_node
            temp_node.next = nil
        elsif curr_node.val == val
            prev_node.next = curr_node.next
            curr_node = prev_node.next
        else
            prev_node = curr_node
            curr_node = curr_node.next
        end
    end
    head
end