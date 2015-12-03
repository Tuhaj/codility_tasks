class TapeEquilibrium

  def solution(a)
    left_sum = a.shift
    right_array = a
    right_sum = right_array.reduce(:+)
    min = (left_sum - right_sum).abs
    until right_array.size == 1 do
      changing_element = right_array.shift
      left_sum += changing_element
      right_sum -= changing_element
      difference = (left_sum - right_sum).abs
      min = [min, difference].min
    end
    min
  end

end
