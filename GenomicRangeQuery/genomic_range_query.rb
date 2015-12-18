class GenomicRangeQuery

  IMPACT_TABLE = {
    "A" => 1,
    "C" => 2,
    "G" => 3,
    "T" => 4
  }

  def minimal_value(string)
    min = 4
    string.split('').each do |el|
      min = IMPACT_TABLE[el] if min > IMPACT_TABLE[el]
      return min if min == 1
    end
    min
  end

  def solution(s, p, q)
    answers = []
    p.each_with_index do |e, index|
      substring = s[e..q[index]]
      answers << minimal_value(substring)
    end
    answers
  end
end
