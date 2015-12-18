require 'byebug'

class MinAvgTwoSlice
  # this solution is based on the observation that if we have four elements with
  # with smaller average than some two elements, there is a pair that has a
  # smaller average
  def solution(array)
    prefixes = Array.new(array.size, 0)
    prefixes[0] = array[0]
    min_avg = Float::INFINITY
    last_trio_avg = Float::INFINITY
    min_avg_slice_start = 0
    array.each_with_index do |element, index|
      next if index == 0
      prefixes[index] = prefixes[index - 1] + element
      last_pair_avg = (prefixes[index] - (index >= 2 ? prefixes[index - 2] : 0)).to_f / 2
      last_trio_avg = (prefixes[index] - (index >= 3 ? prefixes[index - 3] : 0)).to_f / 3 if index >= 2
      new_min_avg = [last_pair_avg, last_trio_avg, min_avg].min
      if new_min_avg == min_avg
      elsif last_pair_avg == new_min_avg
        min_avg_slice_start = index - 1
      elsif last_trio_avg == new_min_avg
        min_avg_slice_start = index - 2
      end
      min_avg = new_min_avg
    end
    min_avg_slice_start
  end
end
