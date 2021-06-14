# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  prefix = strs.first

  strs.each do |str|
    return "" if str == ""
    
    str_ary = str.split("")

    str_ary.each_with_index do |char, i|
      if char == prefix[i]
        if i == (str_ary.length - 1)
          prefix = prefix[0..i]
        end
      elsif i == 0
        return ""
      else
        prefix = prefix[0..(i - 1)]
      end
    end
  end

  return prefix
end


puts longest_common_prefix(["abab", "aba", ""])
