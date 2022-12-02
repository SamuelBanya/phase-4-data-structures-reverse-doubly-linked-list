require_relative './node'

class LinkedList
  attr_accessor :head, :tail, :length

  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def reverse(head)
    # Write a method LinkedList#reverse! that reverses the list in place, 
    # so the head is the new tail, 
    # the tail is the new head, 
    # and all of the prev_node and next_node attributes of each node in the list point to the correct nodes.

    return head if head.length < 2

    current = head
    new_head = nil

    while(current != nil)
      new_head = current.prev_node
      current.prev_node = current.next_node
      current.next_node = new_head
      current = current.prev_node
    end
    new_head.prev_node
  end
end
