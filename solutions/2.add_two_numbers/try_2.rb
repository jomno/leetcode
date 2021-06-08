# Definition for singly-linked list.

# TODO: 링크드 리스트 개념 복습하기
# 재귀 코드를 썼는데.. 0 분기 치는 부분이 마음에 들지 않는다. 좀 더 생각해봐야함.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def to_i
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

  def self.num_to_node(num)
    return ListNode.new(0, nil) if num == 0

    return num_to_recur_node(num)
  end

  def self.num_to_recur_node(num)
    return nil if (num <= 0)

    node = ListNode.new(num % 10, num_to_recur_node(num / 10))
    return node
  end
end

# list_node_1 = ListNode.num_to_node(1000000000000000000000000000001)
list_node_1 = ListNode.num_to_node(243)
list_node_2 = ListNode.num_to_node(564)
puts list_node_1.to_i
puts list_node_2.to_i
sum = list_node_1.to_i + list_node_2.to_i
puts sum
sum_node = ListNode.num_to_node(sum)
puts sum_node.to_i
