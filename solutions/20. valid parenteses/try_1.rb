# 이 방법은 실패
# @param {String} s
# @return {Boolean}
def is_valid(s)
  begin
    eval s
    return true
  rescue Exception => exec
    puts exec
    return false
  end
end


puts is_valid(" ( ) [ ] { } ")