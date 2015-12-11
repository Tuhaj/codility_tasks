class MaxCounters
  def solution(number, array)
    counters = [0] * number
    array.each do |e|
      if e <= number
        counters[e - 1] += 1
      else
        max = counters.max
        counters = [max]  * number
      end
    end
    counters
  end
end
