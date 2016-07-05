require_relative './binary_tree/node.rb'
require_relative './binary_tree/tree.rb'

array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
tree = Tree.new
tree.build(array)
answer = tree.breadth_first_search(9)
if answer
  puts "Found: #{answer}"
else
  puts "Didn't find anything."
end

answer = tree.depth_first_search(9)
if answer
  puts "Found: #{answer}"
else
  puts "Didn't find anything."
end

answer = tree.dfs_rec(9)
if answer
  puts "Found: #{answer}"
else
  puts "Didn't find anything."
end
