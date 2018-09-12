# Reverse a singly linked list.

# Example:

# Input: 1->2->3->4->5->NULL
# Output: 5->4->3->2->1->NULL
# Follow up:

# A linked list can be reversed either iteratively or recursively. Could you implement both?

def reverse_list(head)
    current = head
    prev = nil
    
    while current != nil
        temp_next = current.next
        current.next = prev
        prev = current
        current = temp_next
    end
    prev
end