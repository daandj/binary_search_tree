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
    else
      nil
    end
  end

end
