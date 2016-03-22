require 'byebug'
class Flags
  #there are too many flags in this solution
  def solution(array)
    peaks = get_peaks(array)
    bin_peaks = array_to_binary(peaks)
    peaks_count = peaks.count
    return 0 if peaks_count == 0
    return 1 if peaks_count == 1
    get_optimal_num(bin_peaks, array.size, peaks_count)
  end

  def get_peaks(array)
    return [] if array.size < 3
    peaks_indexes = []
    left_element = array[0]
    checked_element = array[1]
    array.each_with_index do |el, index|
      next if index < 2
      if left_element < checked_element && checked_element > el
        peaks_indexes << index -1
      end
      left_element = checked_element
      checked_element = el
    end
    peaks_indexes
  end

  def array_to_binary(array)
    number = 0
    array.each do |el|
      number = number | 1 << el
    end
    number
  end

  def get_optimal_num(bin_peaks, array_size, peaks_count)
    max_flags_count = [(array_size ** ( 1.0 / 2)).floor, peaks_count].min
    optimal_number = 2
    current_best = 2
    Array(2..max_flags_count).reverse.each do |flags|
      current_best = peakes_in_ranges_with_flag_limit(bin_peaks, flags)
      optimal_number = current_best if current_best > optimal_number
      return optimal_number if flags < optimal_number
    end
    optimal_number
  end

  def peakes_in_ranges(bin_num, range)
    length = ( bin_num.to_s(2).size / range.to_f ).ceil
    count = 0
    mask = 2 ** range - 1
    ( 0..length ).each do |num|
      count += 1 if (bin_num & (mask << range * num)).nonzero?
    end
    count
  end

  def peakes_in_ranges_with_flag_limit(bin_num, range)
    length = ( bin_num.to_s(2).size / range.to_f ).ceil
    count = 0
    mask = 2 ** range - 1
    ( 0..length ).each do |num|
      count += 1 if (bin_num & (mask << range * num)).nonzero?
      return count if count == range
    end
    range
  end
end
