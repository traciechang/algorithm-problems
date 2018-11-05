# hackerrank
# Inserting a Node Into a Sorted Doubly Linked List

def sortedInsert(head, data)
    current_node = head
    new_node = DoublyLinkedListNode.new(data)
    
    if current_node.nil?
        return head = new_node
    elsif current_node.data > data
        new_node.next = current_node
        current_node.prev = new_node
        return head = new_node
    end
    
    while !current_node.next.nil?
        if current_node.next.data > data
            new_node.next = current_node.next
            current_node.next.prev = new_node
            current_node.next = new_node
            new_node.prev = current_node
            return head
        else
            current_node = current_node.next
        end
    end
    
    current_node.next = new_node
    new_node.prev = current_node
    head
end