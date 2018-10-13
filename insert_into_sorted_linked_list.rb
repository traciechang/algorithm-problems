require 'pry'

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

    def compare(list)
        list1 = ""
        list2 = ""

        curr_node = head

        until curr_node.nil?
            list1 << curr_node.val
            curr_node = curr_node.next_node
        end

        curr_node = list.head

        until curr_node.nil?
            list2 << curr_node.val
            curr_node = curr_node.next_node
        end
        binding.pry
        if list1 > list2
            1
        elsif list2 > list1
            -1
        else
            0
        end
    end

    def delete(target)
        curr_node = head
        prev_node = nil

        until curr_node.val == target
            prev_node = curr_node
            curr_node = curr_node.next_node
        end

        if curr_node == head
            @head = curr_node.next_node
        else
            prev_node.next_node = curr_node.next_node
        end
    end

    def insert(new_val)
        curr_node = head
        prev_node = nil

        while curr_node.nil? || curr_node.val != new_val
            if curr_node.nil?
                prev_node.next_node = Node.new(new_val, nil)
                curr_node = prev_node.next_node
            elsif curr_node.val.nil? && prev_node.nil?
                @head = Node.new(new_val, nil)
                curr_node = head
            elsif curr_node.val > new_val
                if prev_node.nil?
                    @head = Node.new(new_val, curr_node)
                    @head.next_node = curr_node
                    curr_node = head
                else
                    prev_node.next_node = Node.new(new_val, curr_node)
                    curr_node = prev_node.next_node 
                end
            else
                prev_node = curr_node
                curr_node = curr_node.next_node
            end
        end
    end

    def merge(list)
        curr_node = head
        curr_node_l2 = list.head

        until curr_node.nil? || curr_node_l2.nil?
            temp_node = curr_node.next_node
            curr_node.next_node = curr_node_l2
            list.head = curr_node_l2.next_node
            curr_node_l2.next_node = temp_node
            curr_node = curr_node.next_node.next_node
            curr_node_l2 = list.head
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

ll = LinkedList.new(nil)
ll.insert(5)
ll.insert(2)
# ll.insert(10)
# ll.insert(7)
# ll.insert(15)
# ll.insert(9)
# ll.delete(9)
# ll.delete(15)
# ll.delete(2)
# ll.insert(5)
# ll.delete(5)


# ll.insert("c")
# ll.insert("a")
# list = LinkedList.new(nil)
# list.insert("c")
# list.insert("a")
# print ll.return_list
# print ll.compare(list)

# testing merge
ll2 = LinkedList.new(nil)
ll2.insert(3)
ll2.insert(9)
ll2.insert(10)
ll.merge(ll2)

print ll.return_list
print ll2.return_list