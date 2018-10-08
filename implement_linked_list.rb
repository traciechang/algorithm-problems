class Node
    attr_accessor :val, :next_node
    
    def initialize(val, next_node)
        @val = val
        @next_node = next_node
    end
end

class LinkedList
    attr_accessor :head

    def initialize(val)
        @head = Node.new(val, nil)
    end

    def add(val)
        current_node = head

        until current_node.next_node.nil?
            current_node = current_node.next_node
        end
        current_node.next_node = Node.new(val, nil)
    end

    def delete(val)
        current_node = head
        prev_node = nil

        until current_node.val == val
            prev_node = current_node
            current_node = current_node.next_node
        end

        if prev_node.nil?
            @head = current_node.next_node
        else
            prev_node.next_node = current_node.next_node
        end
    end

    def return_list
        list = []
        current_node = head

        until current_node.nil?
            list << current_node.val
            # list << current_node
            current_node = current_node.next_node
        end
        list
    end
end

myList = LinkedList.new(1)
myList.add(2)
myList.add(3)
myList.add(4)
myList.add(5)
myList.delete(1)
puts myList.return_list