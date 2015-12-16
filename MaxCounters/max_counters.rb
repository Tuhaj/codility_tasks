class MaxCounters
  def solution(number, array)
    counters = Array.new(number, 0)
    max = 0
    array.each do |e|
      if e <= number
        current_value = counters[e - 1]
        new_value = current_value + 1
        max = new_value if max < new_value
        counters[e - 1] = new_value
      else
        counters = Array.new(number, max)
      end
    end
    counters
  end
end
