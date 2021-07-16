# @param {String} s
# @return {String}
def longest_palindrome(s)
  puts s
  pal = s[0]
  largest_pal = s.length

  s.length.times do |i|
    largest_pal = (s.length - i)
    check_num = (largest_pal.fdiv(2).ceil)
    puts "i: #{i}, l_p: #{largest_pal}, check_num: #{check_num}, s: #{s[i...(i+check_num)]}"

    (i...(i + check_num)).each do |j|
      origin = s[i..j]
      rst = (j - i)
      if rst.zero? # 0?
        target = "#{origin}#{origin}"
        pal = target if (target == s[i..(j + 1)]) && pal.length < target.length

        puts "#{i} #{j} #{origin}#{origin} == #{s[i..(j + 1)]}"
      else
        rvs_1 = s[i..(j - 1)].reverse
        target = "#{origin}#{rvs_1}"
        pal = target if target == s[i..(2 * j - i)] && pal.length < target.length

        rvs_2 = origin.reverse
        target = "#{origin}#{rvs_2}"
        pal = target if target == s[i..(2 * j - i + 1)] && pal.length < target.length
        
        puts "#{i} #{j} #{origin}#{rvs_1} == #{s[i..(2 * j - i)]}"
        puts "#{i} #{j} #{origin}#{rvs_2} == #{s[i..(2 * j - i + 1)]}"
      end
    end
    puts "========================"
  end

  return pal
end

puts longest_palindrome("ccc")

# "abcd"
# pal.max = 4..1
# "a"
# "ab" * 2

# "b"
# "bc"

# "c"
# "cd"
# 1 => 2
# 2 => 3, 4 (((j - i + 1) * 2) - 1) + i => 2j - i + 1, ((rst + 1) * 2) =>  (2j - i + 2)
# 3 => 5, 6
# 4 => 7, 8