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
      @tail.next_node = nil
    end
  end

  def prepend(value)
    new_node = Node.new(value, nil)
    if @head == nil
      @head = new_node
      @tail = new_node
    else
      old_head = @head
      @head.next_node = new_node
      @head = new_node
      @head.next_node = old_head
      @tail.next_node = nil
    end
  end

  def size
    tmp = @head
    size = 0
    while tmp != nil
      tmp = tmp.next_node
      size += 1
    end
    p size
  end

  def head
    p @head.value
    p @head.next_node.value
  end

  def tail
    p @tail.value
  end

  def at_index(index)
    iteration = 0
    tmp = @head
    while iteration < index
      tmp = tmp.next_node
      iteration += 1
    end
    p tmp
  end

  def pop
    tmp = @head
    while tmp != nil
      previous_node = tmp
      tmp = tmp.next_node
    end
    @tail = previous_node
    @tail.next_node = nil
  end
end

class Node
  attr_accessor :next_node, :value
  
  def initialize (value, next_node)
    @value = value
    @next_node = next_node
  end  
end

linked_list = LinkedList.new
linked_list.prepend(3)
linked_list.prepend(2)
linked_list.append(9)
linked_list.append(-1)
linked_list.prepend(20)
p linked_list

linked_list.pop
p linked_list