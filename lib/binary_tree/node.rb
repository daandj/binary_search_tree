class Node
  attr_accessor :value

  def init(value, parent = nil, child1 = nil, child2 = nil)
    @value = value
    @root = true ? parent == nil : @parent = parent
    @child1 = child1 if child1 != nil
    @child2 = child2 if child2 != nil
  end

end
