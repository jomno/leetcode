# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# 희재 샤라웃 감사감사
def two_sum(nums, target)
  ary = []

  nums.each_with_index do |num, i|
    result_index = ary.index(target - num)
    if result_index.nil?
      ary << num
      next
    else
      return [i, result_index]
    end
  end
end
