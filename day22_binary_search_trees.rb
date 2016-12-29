class Node
    attr_accessor :left,:right,:data
  def initialize data
      @left=@right=nil
      @data=data
    end
end
class Solution
    # Insert root and data (node's value) into tree
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

    # Find the maximum height of the binary tree
    # height(t) = 1 + (height(left-child), height(right-child)).max 
    def getHeight(root)

      # if node is empty, return -1
      if root == nil
        height = - 1
      else
        height = 1 + [getHeight(root.left), getHeight(root.right)].max 
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
height=myTree.getHeight(root)
print height

