class Flags

  def solution(array)
    peaks = get_peaks(array)
    bin_peaks = array_to_binary(peaks)
    peaks_count = peaks.count
    return 0 if peaks_count == 0
    return 1 if peaks_count == 1
    get_optimal_num(bin_peaks, array.size)
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

  def get_optimal_num(bin_peaks, array_size)
    max_flags_count = (array_size ** ( 1.0 / 2)).floor
    Array(2..max_flags_count).reverse.find do |mask|
      mask_covers_the_array?(bin_peaks, mask)
    end
  end

  def mask_covers_the_array?(bin_peaks, mask)
    (0..mask.bit_length).all? { |shift| (bin_peaks & (mask << shift * mask.bit_length)).nonzero? }
  end
end
