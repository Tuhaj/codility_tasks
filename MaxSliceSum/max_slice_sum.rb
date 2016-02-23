class MaxSliceSum
  def solution(array)
    maximum_ending = 0
    max_slice = 0
    max = array.first
    array.each do |el|
      max = el if el > max
      maximum_ending = [ 0, maximum_ending + el ].max
      max_slice = [ max_slice, maximum_ending ].max
    end
    max < 0 ? max : max_slice
  end
end
