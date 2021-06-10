# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_hash = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000,
  }

  result = 0
  before_v = nil
  present_v = 0

  s.length.times do |i|
    present_v = roman_hash[s[i]]
    if before_v.nil?
      puts "nil"
      if (i + 1) == s.length
        result += present_v
      else
        before_v = present_v
      end
    else
      puts "present"
      if before_v < present_v
        result += (present_v - before_v)
        before_v = nil
      else
        if (i + 1) == s.length
          result += (before_v + present_v)
        else
          result += before_v
          before_v = present_v
        end
      end
    end

    puts "before_v: #{before_v} present_v: #{present_v} result: #{result}"
  end

  return result
end

roman_to_int("III")

