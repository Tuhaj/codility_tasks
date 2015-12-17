class MaxCounters
  def solution(number, array)
    counters = Array.new(number, 0)
    max = 0
    max_counters = true
    array.each do |e|
      if e <= number
        max_counters = false
        current_value = counters[e - 1]
        new_value = current_value + 1
        if max < new_value
          max = new_value
        end
        counters[e - 1] = new_value
      else
        counters = Array.new(number, max) unless max_counters
      end
    end
    counters
  end
end
