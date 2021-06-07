# @param {Integer} x
# @return {Boolean}
# 7.reverse_integer와 같은 유형의 문제
def is_palindrome(x)
  check_32bit_integer = Proc.new { |num| num <= (-2 ** 31) || num >= (2 ** 31) - 1 }

  return false if check_32bit_integer.call(x)

  return x.to_s.reverse.to_i == x
end
