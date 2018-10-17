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

    def reverse
        prev_node = nil
        curr_node = head
        nextnode = nil

        until curr_node.nil?
            nextnode = curr_node.next_node
            curr_node.next_node = prev_node
            prev_node = curr_node
            curr_node = nextnode
        end
        @head = prev_node
    end
end

def intersection(list1, list2)
    seen_hash = {}
    curr_node_l1 = list1.head
    curr_node_l2 = list2.head
    new_list = LinkedList.new(nil)

    until curr_node_l1.nil?
        seen_hash[curr_node_l1.val] = true
        curr_node_l1 = curr_node_l1.next_node
    end

    until curr_node_l2.nil?
        new_list.insert(curr_node_l2.val) if seen_hash[curr_node_l2.val]
        curr_node_l2 = curr_node_l2.next_node
    end
    new_list
end

def union(list1, list2)
    seen_hash = {}
    curr_node_l1 = list1.head
    curr_node_l2 = list2.head
    new_list = LinkedList.new(nil)

    until curr_node_l1.nil?
        seen_hash[curr_node_l1.val] = true
        curr_node_l1 = curr_node_l1.next_node
    end

    until curr_node_l2.nil?
        seen_hash[curr_node_l2.val] = true
        curr_node_l2 = curr_node_l2.next_node
    end

    seen_hash.each do |k, v|
        new_list.insert(k)
    end
    new_list
end

# You have a linked list and you want to find the kth to last node. Write a function kth_to_last_node that takes an integer k and the head_node of a linked list, and returns the kth to the last node in the list.
def kth_to_last_node(head_node, k)
    curr_node = head_node
    list_length = 0

    until curr_node.nil?
        list_length +=1
        curr_node = curr_node.next_node
    end

    target_node = list_length - k + 1
    curr_node = head_node
    counter = 1

    until counter == target_node
        counter +=1
        curr_node = curr_node.next_node
    end
    curr_node.val
end

# def reverse_in_groups(list, k)
#     return Node.new(nil, nil) if list.head.val.nil?

#     counter = 1
#     curr_node = list.head
#     curr_list_end = list.head

#     until counter == k || curr_node.nil?
#         curr_node = curr_node.next_node
#         counter +=1
#     end
#     binding.pry
#     next_list_start = curr_node.next_node.val
#     next_list = LinkedList.new(next_list_start)
#     curr_node.next_node = nil

#     reversed_list = list.reverse
#     # next_reversed_list = next_list.reverse
#     next_reversed_list = reverse_in_groups(next_list, k)
#     curr_list_end.next_node = next_reversed_list.head
# end

# ll = LinkedList.new(nil)
# ll.insert(5)
# ll.insert(2)
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
# ll2 = LinkedList.new(nil)
# ll2.insert(3)
# ll2.insert(9)
# ll2.insert(10)
# ll.merge(ll2)

# print ll.return_list
# print ll2.return_list

# testing intersection & union
# ll1 = LinkedList.new(nil)
# ll1.insert(10)
# ll1.insert(4)
# ll1.insert(15)
# ll1.insert(20)
# ll2 = LinkedList.new(nil)
# ll2.insert(8)
# ll2.insert(4)
# ll2.insert(2)
# ll2.insert(10)
# new_ll = intersection(ll1,ll2)
# new_ll = union(ll1, ll2)
# print new_ll.return_list

# testing reverse
# ll = LinkedList.new(nil)
# ll.insert(1)
# ll.insert(2)
# ll.insert(3)
# ll.insert(4)
# ll.insert(5)
# ll.reverse
# print ll.return_list

# testing reverse in groups
# ll = LinkedList.new(nil)
# ll.insert(1)
# ll.insert(2)
# ll.insert(3)
# ll.insert(4)
# ll.insert(5)
# ll.insert(6)
# ll.insert(7)
# ll.insert(8)
# new_list=reverse_in_groups(ll, 3)
# print new_list.return_list

# testing kth_to_last_node
ll = LinkedList.new(nil)
ll.insert(6)
ll.insert(7)
ll.insert(5)
ll.insert(9)
ll.insert(10)
print kth_to_last_node(ll.head, 4)
