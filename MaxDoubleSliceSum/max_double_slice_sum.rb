class MaxDoubleSliceSum
  def solution(array)
    size = array.size
    return 0 if size < 4
    array.shift
    array.pop
    last_element_index = size - 3
    max_ending, max_slice = 0, 0
    flop = array[1]

    array.each_with_index do |el, index|
      next if index == 1
      if max_ending + el < 0
        if max_ending + flop < 0
          max_ending = 0
        else
          max_ending += flop
          el = flop
        end
      else
        if el < flop
          max_ending += flop
          flop = el
        else
          max_ending = max_ending + el
        end
      end
      max_slice = [max_slice, max_ending].max
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
