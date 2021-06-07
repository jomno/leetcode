# 정석 답 예시, 이 방법으로도 사고해보기
def is_palindrome(x)
  n = x
  reverse_x = 0
  while (n > 0)
    # puts "init n: #{n} reverse_x: #{reverse_x}"
    reverse_x = (reverse_x * 10 + (n % 10))
    n /= 10
    # puts "n: #{n} reverse_x: #{reverse_x}"
  end
  # puts reverse_x
  return x == reverse_x
end

# puts is_palindrome(gets.to_i)