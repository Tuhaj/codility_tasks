class Peaks
  def solution(array)
    peaks = get_peaks(array)
    return 0 if peaks.count == 0
    return 1 if peaks.count == 1
    result = 1
    size = array.size
    factors = get_factors(size)
    bin_peaks = array_to_binary(peaks)
    result = factors.find do |factor|
      range = size / factor
      mask = 2 ** range - 1
      mask_covers_the_array?(bin_peaks, mask, size)
    end
  end

  def mask_covers_the_array?(bin_peaks, mask, array_size)
    slices = (array_size / mask.bit_length) - 1
    (0..slices).all? { |shift| (bin_peaks & (mask << shift * mask.bit_length)).nonzero? }
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

  def get_factors(number)
    factors = []
    root_of_number = (number ** ( 1.0 / 2) )
    if root_of_number % 1 == 0
      factors << root_of_number.to_i
    end
    Array(1..root_of_number.floor).each do |divisor|
      if number % divisor == 0
        factors << divisor
        factors << ( number / divisor )
      end
    end
    factors.delete(number)
    factors.sort!.reverse!
  end

  def array_to_binary(array)
    number = 0
    array.each do |el|
      number = number | 1 << el
    end
    number
  end
end
