class MaxDoubleSliceSum
  def solution(array)

  end

  def double_slice(array, x, y, z)
    sum = 0
    all = array[(x + 1)..(y - 1)] + array[(y + 1)..(z - 1)]
    all.inject(:+) || sum
  end

  def max_slice(array)
    max_ending, max_slice = 0, 0
    array.each do |el|
      max_ending = [0, max_ending + el].max
      max_slice = [max_slice, max_ending].max
    end
    max_slice
  end
end
