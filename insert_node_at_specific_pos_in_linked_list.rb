# hackerrank

def insertNodeAtPosition(llist, data, position)
    current_position = 0
    current_node = llist
    prev_node = nil
    
    until current_position == position
        prev_node = current_node
        current_node = current_node.next
        current_position += 1
    end
    
    new_node = SinglyLinkedListNode.new(data)
    prev_node.next = new_node
    new_node.next = current_node
    llist
end