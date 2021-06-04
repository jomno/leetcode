# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# 실패 원인 => Time Limit Exceeded
# 너무 복잡하게 코드를 짬., 무조건 순차적으로 돌아가는 코드에다가, 이상한 처리의 코드가 많음
# ex) nums.reject.each_with_index { |v, t_i| t_i == i }
# 로직의 정돈이 필요

def two_sum(nums, target)
  result = []
  nums.each_with_index do |num, i|
    result << i
    temp_nums = nums.reject.each_with_index { |v, t_i| t_i == i }
    temp_result = temp_nums.index(target - num)

    if temp_result.nil?
      result = []
      next
    else
      result << (temp_result + 1)
      break
    end
  end

  return result
end
