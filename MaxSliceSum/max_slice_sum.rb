class MaxSliceSum
  def solution(array)
    prefix = [array.first]
    array.each_with_index do |el, index|
      next if index == 0
      prefix << prefix[index - 1] + el
    end
    prefix.max
  end
end
