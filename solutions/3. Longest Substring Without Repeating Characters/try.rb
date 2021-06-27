# @param {String} s
# @return {Integer}
# 틀림... 문제를 이해하지 못 하겠음
def length_of_longest_substring(s)
  store_ary = []
  substring = ""
  substring_ary = []

  s.split("").each_with_index do |char, i|
    if store_ary.include?(char)
      store_ary = [char]
      substring_ary << substring
      substring = char
    else
      store_ary << char
      substring += char
      substring_ary << substring if i + 1 == s.length
    end
  end

  return substring_ary.inject(0) { |max, str| max = max >= str.length ? max : str.length  }
end

puts length_of_longest_substring("pwwkew")
