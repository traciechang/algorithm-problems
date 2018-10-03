# leet

# Given a singly linked list, determine if it is a palindrome.

# Example 1:

# Input: 1->2
# Output: false
# Example 2:

# Input: 1->2->2->1
# Output: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    counter = 0
    current_node = head
    
    until current_node.nil?
        counter +=1
        current_node = current_node.next
    end
    
    middle = (counter % 2 == 0) ? (counter / 2) : (counter / 2 + 1)
    odd = counter % 2 == 0 ? false : true
    
    current_node = head
    current_node
    counter = 0
    first_half = []
    
    until counter == middle
        first_half << current_node.val
        counter +=1
        current_node = current_node.next unless counter == middle && odd
    end

    arr_counter = -1

    until current_node.nil?
        return false if current_node.val != first_half[arr_counter]
        arr_counter -=1
        current_node = current_node.next
    end
    true
end