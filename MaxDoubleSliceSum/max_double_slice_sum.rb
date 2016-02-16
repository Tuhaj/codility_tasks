class MaxDoubleSliceSum
  def solution(array)
    return 0 if array.size < 4
    max_slice = 0
    left_prefix_sums = [0]
    right_prefix_sums = [0]
    left_sum = 0
    right_sum = 0
    array[1..-3].each do |el|
      left_sum += el
      left_sum = [left_sum, 0].max
      left_prefix_sums << left_sum
    end

    array.reverse!

    array[1..-3].each do |el|
      right_sum += el
      right_sum = [right_sum, 0].max
      right_prefix_sums << right_sum
    end

    Array(1..array.size - 2).each do |index|
      max_slice = [
        max_slice,
        left_prefix_sums[index - 1] + right_prefix_sums[-index]
      ].max
    end
    max_slice
  end

  def max_slice(array)
    max_ending, max_slice = 0, 0
    array.each do |el|
      if max_ending + el < 0
        max_ending = 0
      else
        max_ending = max_ending + el
      end
      max_slice = [max_slice, max_ending].max
    end
    max_slice
  end
end
