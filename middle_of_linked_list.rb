# Given a non-empty, singly linked list with head node head, return a middle node of linked list.

# If there are two middle nodes, return the second middle node.

 

# Example 1:

# Input: [1,2,3,4,5]
# Output: Node 3 from this list (Serialization: [3,4,5])
# The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
# Note that we returned a ListNode object ans, such that:
# ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
# Example 2:

# Input: [1,2,3,4,5,6]
# Output: Node 4 from this list (Serialization: [4,5,6])
# Since the list has two middle nodes with values 3 and 4, we return the second one.
 

# Note:

# The number of nodes in the given list will be between 1 and 100.

# def middle_node(head)
#     counter = 0
#      current = head
     
#      while current != nil
#          counter +=1
#          current = current.next
#      end
     
#      current = head
#      midpoint = (counter / 2) + 1
     
#      until midpoint == 1
#          current = current.next
#          midpoint -=1
#      end
#      current
#  end

require 'pry'

def merge_intervals(intervals)
    output = []

    intervals.each do |interval|
        modified = false
        if output.empty?
            output << interval
        else
            output.each_with_index do |el,idx|
                if (el[0]..el[1]).include?(interval[0]) || ((el[0]..el[1]).include?(interval[1]))
                    new_range = (el + interval).uniq.sort
                    output[idx] = [new_range[0], new_range[-1]]
                    modified = true
                    break
                end
            end
            output << interval if !modified
        end
    end
    output
end

# print merge_intervals([[1, 3], [2, 6], [8, 10], [15, 18]])
print merge_intervals([[1, 4], [4, 5]])