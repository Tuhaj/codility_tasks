class MinAvgTwoSlice
  # this solution is based on the observation that if we have four elements with
  # with smaller average than some two elements, there is a pair that has a
  # smaller average
  def solution(array)
    size = array.size
    prefixes = Array.new(size, 0)
    prefixes[0] = array[0]
    min_avg = Float::INFINITY
    last_trio_avg = Float::INFINITY
    min_avg_slice_start = 0
    array.each_with_index do |element, index|
      next if index == 0
      prefixes[index] = prefixes[index - 1] + element
      if index > 1
        last_pair_avg = (prefixes[index] - prefixes[index - 2]).to_f / 2
        last_trio_avg = (prefixes[index] - prefixes[index - 3]).to_f / 3 if index > 3
        min_avg = [last_pair_avg, last_trio_avg, min_avg].min
        if last_pair_avg == min_avg
          min_avg_slice_start = index - 1
        elsif last_trio_avg == min_avg
          min_avg_slice_start = index - 2
        end
      else
        min_avg = prefixes[index].to_f / 2
      end
    end
    min_avg_slice_start
  end
end
