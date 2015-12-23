class GenomicRangeQuery

  def return_min_in_substring(string)
    if string.include?("A")
      return 1
    elsif string.include?("C")
      return 2
    elsif string.include?("G")
      return 3
    else
      return 4
    end
  end

  # def return_min_in_substring(string)
  #   min = 4
  #   string.split('').each do |char|
  #     return 1 if char == 'A'
  #     min = 2 if min > 2 && char == 'C'
  #     if min == 4
  #       min = 3 if char == 'G'
  #     end
  #   end
  #   min
  # end

  def solution(s, p, q)
    answers = []
    p.each_with_index do |e, index|
      substring = s[e..q[index]]
      answers << return_min_in_substring(substring)
    end
    answers
  end
end
