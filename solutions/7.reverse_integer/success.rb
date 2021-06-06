# @param {Integer} x
# @return {Integer}

# signed 32bit integer의 영역을 계산하는 거
# ruby, python, js 같은 플밍 언어를 사용하다보면 이런 타입별 제한에 좀 무뎌지게 된다.
# 이거를 우리가 생각하면서, 다루면서 코드를 짜야할 듯
def reverse(x)
  check_32bit_integer = Proc.new { |num| num <= (-2 ** 31) || num >= (2 ** 31) - 1 }
  return 0 if check_32bit_integer.call(x)

  target_num = x < 0 ? -1 : 1
  result = x.to_s.reverse.to_i * target_num

  return 0 if check_32bit_integer.call(result)
  return result
end
