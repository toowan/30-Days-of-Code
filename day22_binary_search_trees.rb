class Node
    attr_accessor :left,:right,:data
  def initialize data
      @left=@right=nil
      @data=data
    end
end
class Solution
    def insert (root,data)
        if root==nil
            return Node.new(data)
        else
            if data<=root.data
                cur=self.insert(root.left,data)
                root.left=cur
            else
                cur=self.insert(root.right,data)
                root.right=cur
            end
        end
        return root
    end

    # Print each row of tree from left to right, from root to lowest row.
    def levelOrder(root)
      # Enqueue root node
      queue = []
      queue << root
      # Initialize current level and next level. 
      current_level = 1
      next_level = 0

      # While queue is not empty / there are nodes to process
      while(!queue.empty?)  
        # Dequeue (remove) root node
        node = queue.shift  
        current_level = -1  
        # print the value of the node
        print "#{node.data} " 

        # enqueue left child node and move down to next level
        unless node.left.nil?
          queue << node.left
          next_level += 1
        end

        # enqueue right child node and move down to next level
        unless node.right.nil?
          queue << node.right
          next_level += 1
        end

        # when the current level is 0, set it and the next level to 0
        if current_level == 0
          current_level = next_level
          next_level = 0
        end

      end
    end
end

# Provided by Hacker Rank: 
myTree=Solution.new
root=nil
T=gets.to_i
for i in 1..T
    data=gets.to_i
    root=myTree.insert(root,data)
end
myTree.levelOrder(root)