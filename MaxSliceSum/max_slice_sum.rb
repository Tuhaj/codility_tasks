class MaxSliceSum
  def solution(array)
    prefix = [array.first]
    array.each_with_index do |el, index|
      next if index == 0
      sum = prefix[index - 1] + el
      sum = sum > 0 ? sum : 0
      prefix << sum
    end
    prefix.max
  end
end
