class Tree
  attr_reader :root
  
  def initialize
    @root = nil
  end

  def build(array)
    array.shuffle!
    array.each { |value| add_node(value, @root) }
  end
  
  def breadth_first_search(target)
    queue = [@root]
    answer = nil
    while queue.size > 0
      if queue[0].value == target
	answer = target
	queue.clear
      else
	queue[0].children { |child| queue << child } 
	queue.delete_at(0)
      end
    end
    return answer
  end

  def depth_first_search(target)
    stack = [@root]
    answer = nil
    while stack.size > 0
      if stack[0].value == target
	answer = target
	stack.clear
      else
	stack[0].children { |child| stack.insert(1, child) } 
	stack.delete_at(0)
      end
    end
    return answer
  end
  
  def dfs_rec(target, node=@root)
    if node.value == target
      return node.value
    else
      node.children { |child| dfs_rec(target, child) }
    end
  end

  private

  def add_node(value, current = nil)
    if @root.nil?
      @root = Node.new(value: value)
    elsif value <= current.value
      if current.child1.nil?
        current.child1 = Node.new(value: value, parent: current)
      else
        add_node(value, current.child1)
      end
    elsif value > current.value
      if current.child2.nil?
        current.child2 = Node.new(value: value, parent: current)
      else
        add_node(value, current.child2)
      end
    end
  end
end
