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
      if root != nil
        queue = [root]
      else
        queue = []
      end

      # While queue is not empty 
      while queue != [] 
        node = queue.pop 
        # print the value of the node
        print "#{node.data} " 

        # enqueue left child node and move down to next level
        if node.left != nil
          queue.insert(0,node.left)
        end

        # enqueue right child node and move down to next level
        if node.right != nil
          queue.insert(0,node.right)
        end

      end
    end
end
       
myTree=Solution.new
root=nil
T=gets.to_i
for i in 1..T
    data=gets.to_i
    root=myTree.insert(root,data)
end
myTree.levelOrder(root)

