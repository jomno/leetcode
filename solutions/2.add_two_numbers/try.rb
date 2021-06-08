# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def find_node_num
    result = 0
    temp_node = self
    i = 0
    loop do
      result = result + (temp_node.val * (10 ** i))
      temp_node = temp_node.next
      break if temp_node.nil?
      i += 1
    end
    return result
  end

  def self.num_to_list_node(num)
    return ListNode.new(num % 10, nil) if (num == 0)
    return nil if (num > 0 && num < 1)

    node = ListNode.new((num.floor) % 10, num_to_list_node(num.fdiv(10)))
    return node
  end
end

# list_node = ListNode.num_to_list_node(179)
# puts list_node.find_node_num

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = l1.find_node_num + l2.find_node_num
  
  return ListNode.num_to_list_node(sum)
end
