class TapeEquilibrium

  def solution(a)
    split_points = ( a.size - 1 )
    right_array = a[1..-1]
    left_sum = a[0]
    right_sum = right_array.reduce(:+)
    min = (left_sum - right_sum).abs
    split_points.times do
      changing_element = right_array.shift
      left_sum = left_sum + changing_element
      right_sum = right_sum - changing_element
      difference = (left_sum - right_sum).abs
      min = [min, difference].min
    end
    min
  end

end
