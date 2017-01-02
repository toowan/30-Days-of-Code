class Node
  attr_accessor :data,:next

  def initialize data
    @data = data
    @next = nil
  end
end

class Solution
  def removeDuplicates(head)
    # If head node is empty and next node is empty, return node
    if head == nil || head.next == nil
        return head 
    # If current node's data is the same as next node's data, remove current node.
    elsif head.data == head.next.data
        # reset next node to the following node
        head.next = head.next.next
        removeDuplicates(head)
    else
        # Otherwise, remove the next node
        removeDuplicates(head.next)
    end
    return head
  end

# Provided by Hacker Rank: 
  def insert(head,value)
    p=Node.new(value)
    if head==nil
       head=p
    elsif head.next==nil
       head.next=p
    else  
       current = head
      while current.next != nil
         current = current.next
      end 
      current.next = p
    end
    return head   
  end  

  def display(head)
   current = head
   while current 
      print current.data," "
      current = current.next
   end
  end
end
       
mylist= Solution.new
head=nil
T=gets.to_i
for i in 1..T
    data=gets.to_i
    head=mylist.insert(head,data)
end
head=mylist.removeDuplicates(head)
mylist.display(head)

