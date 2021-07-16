# @param {String} s
# @return {String}
def longest_palindrome(s)
  pal = ""
  max_length = s.length
  s.split("").each_with_index do |char, i|
    (i...max_length).each do |j|
      str = s[i..j]
    end
  end

  return pal
end

longest_palindrome("abcd")

"abcd"
pal.max = 4..1
"a"
"ab" * 2

"b"
"bc"

"c"
"cd"