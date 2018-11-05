# hackerrank

def reverse(head)
    current_node = head
    
    while !current_node.next.nil?
        temp = current_node.prev
        current_node.prev = current_node.next
        if current_node == head
            current_node.next = nil
        else
            current_node.next = temp
        end
        current_node = current_node.prev
    end
    current_node.next = current_node.prev
    current_node.prev = nil
    head = current_node
end