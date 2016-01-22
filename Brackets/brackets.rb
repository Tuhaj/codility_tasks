class Brackets
  def solution(string)
    return 1 if string == ""
    matching_brackets = {
      ")" => "(",
      "}" => "{",
      "]" => "["
    }
    bracket_counters = {
      "(" => 0,
      "{" => 0,
      "[" => 0,
    }
    opening_brackets = ["(", "[", "{"]
    closing_brackets = [")", "]", "}"]
    array = string.split('')
    last_bracket = array.shift
    return 0 if closing_brackets.include?(last_bracket)
    bracket_counters[last_bracket] += 1
    array.each do |bracket|
      return 0 if closing_brackets.include?(bracket) && opening_brackets.include?(last_bracket) && matching_brackets[bracket] != last_bracket
      if opening_brackets.include?(bracket)
        bracket_counters[bracket] += 1
      else
        return 0 if bracket_counters[matching_brackets[bracket]] == 0
        bracket_counters[matching_brackets[bracket]] -= 1
      end
      last_bracket = bracket
    end
    return 0 if bracket_counters['('] != 0 || bracket_counters['['] != 0 ||
      bracket_counters['{'] != 0
    return 1
  end
end
