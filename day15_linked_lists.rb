## Provided by Hacker Rank
class Node
  attr_accessor :data,:next
  def initialize data
    @data = data
    @next = nil
  end
end

class Solution
  # Complete the insert function so that it creates a new Node (pass data as the Node constructor
  # argument) and inserts it at the tail of the linked list referenced by the head parameter. Once the
  # new node is added, return the head reference to the node.
  def insert(head, data)
      if (head == nil)  # if there's no head create a new node and set it as the head
          head = Node.new(data)
      else
          current = head  # set current node as the head
          while current.next != nil # while the next one is not the tail, set the current node to the next node.
              current = current.next
          end
          current.next = Node.new(data) # create a new node to insert into the sequence at tail
      end
      return head  # return head reference to the node
  end

## Provided by Hacker Rank
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
mylist.display(head)
