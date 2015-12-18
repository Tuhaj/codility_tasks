class MinAvgTwoSlice

  def prefix_sums(array)
    size = array.size
    prefixes = Array.new(size, 0)
    array.each_with_index do |element, index|
      prefixes[index] = prefixes[index - 1] + element
    end
    prefixes
  end

  def solution(array)
    size = array.size
    prefixes = Array.new(size, 0)
    min_avg_slice_start = 0
    prefixes[0] = array[0]
    slice = [array[0]]
    slice_members = 1
    min_avg = Float::INFINITY
    array.each_with_index do |element, index|
      next if index == 0
      slice << element
      sum = prefixes[index - 1] + element
      slice_members += 1
      avg = sum.to_f / slice_members
      if avg < min_avg
        while slice_members > 2
          slice_members -= 1
          first_element = slice.shift
          test_sum = sum - first_element
          avg = test_sum.to_f / slice_members
          min_avg = avg if avg < min_avg
        end
        min_avg = avg
        min_avg_slice_start = index + 1 - slice_members
        prefixes[index] = sum
      else
        slice_members = 1
        prefixes[index] = element
      end
    end
    min_avg_slice_start
  end
end
