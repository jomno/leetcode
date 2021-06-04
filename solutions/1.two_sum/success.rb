# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# 희재 샤라웃 감사감사
# 반복문이 속도 저하를 일으킨다. 반복문을 줄이기 => 시간 복잡도
def two_sum(nums, target)
  store_ary = []

  nums.each_with_index do |num, i|
    puts i
    other_num = target - num
    other_num_index = store_ary.index(other_num)
    if other_num_index.nil?
      store_ary << num
      next
    else
      return [other_num_index, i]
    end
  end
end