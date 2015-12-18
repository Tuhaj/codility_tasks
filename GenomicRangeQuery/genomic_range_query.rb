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

  def solution(s, p, q)
    answers = []
    p.each_with_index do |e, index|
      substring = s[e..q[index]]
      answers << return_min_in_substring(substring)
    end
    answers
  end
end
