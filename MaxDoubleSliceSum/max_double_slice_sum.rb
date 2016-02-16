class MaxDoubleSliceSum
  def solution(array)
    array.shift
    array.pop
    max_ending = 0
    flop = 0
    max_slice = 0
    array.each_with_index do |el, index|
      if max_ending + el < 0
        if max_ending + flop < 0
          max_ending = 0
        else
          max_ending = max_ending + flop
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
