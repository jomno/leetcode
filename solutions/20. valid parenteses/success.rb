def is_valid(s)
	target_value = nil
	store_ary = []
	position = nil
	pair = {
		"[" => "]",
		"(" => ")",
		"{" => "}"
	}

	is_front = Proc.new { |char|
		pair.keys.include?(char) 
	}

	is_back = Proc.new { |char|
		pair.values.include?(char) 
	}

	check_position = Proc.new { |char|
		if is_front.call(char)
			"front"
		elsif is_back.call(char)
			"back"
		else
			nil
		end
	}

	s.split("").each do |char|
		position = check_position.call(char)
		case position
		when "back"
			if char == target_value
				store_ary.pop
				target_value = store_ary.empty? ? nil : pair[store_ary.last]
			else
				return false
			end
		when "front"
			store_ary << char
			target_value = pair[char]
		else
			return false
		end
	end

	return store_ary.empty?
end