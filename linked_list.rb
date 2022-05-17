class LinkedList
  def initialize 
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value, nil)
    if @head == nil
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end  
  end

end

class Node
  attr_accessor :next_node
  
  def initialize (value, next_node)
    @value = value
    @next_node = next_node
  end
  
end

linked_list = LinkedList.new
linked_list.append(3)
linked_list.append(4)
linked_list.append(5)

p linked_list