class Node
  attr_accessor :value, :child1, :child2, :parent

  def initialize(opts={})
    @root = true ? opts[:parent] == nil : @parent = opts[:parent]
    @child1, @child2, @value = opts[:child1], opts[:child2], opts[:value]
  end

  def children
    if block_given?
      yield(@child1) if @child1
      yield(@child2) if @child2 
    elsif @child1 and @child2
      return 2
    elsif @child1 or @child2
      return 1
    else 
      return 0
    end
  end

end
