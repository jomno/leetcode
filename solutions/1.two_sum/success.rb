# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# 희재 샤라웃 감사감사
def two_sum(nums, target)
  ary = []

  nums.each_with_index do |num, i|
    other_num = target - num
    other_num_index = ary.index(other_num)
    if other_num_index.nil?
      ary << num
      next
    else
      return [i, other_num_index]
    end
  end
end
