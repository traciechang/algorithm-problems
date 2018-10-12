require 'pry'

def merge_sort(arr)
end

def binary_search(arr, target)

end

def quicksort(arr, left_idx, right_idx)
end


# print merge_sort([3,5,2,4,1])
# print binary_search([1,2,3,4,5,6], 1)


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
ll.insert(10)
ll.insert(7)
ll.insert(15)
ll.insert(9)
puts ll.return_list