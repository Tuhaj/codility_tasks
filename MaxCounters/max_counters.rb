class MaxCounters
  def solution(number, array)
    counters = [0] * number
    max = 0
    array.each do |e|
      if e <= number
        current_value = counters[e - 1]
        new_value = current_value + 1
        max = new_value if max < new_value
        counters[e - 1] = new_value
      else
        counters = [max]  * number
      end
    end
    counters
  end
end
