class Peaks
  def solution(array)
    peaks = get_peaks(array)
    return 0 if peaks.count == 0
    return 1 if peaks.count == 1
    result = 1
    size = array.size
    factors = get_factors(size)
    max_size = peaks.size
    factors.each do |factor|
      if each_block_has_peak?(array, peaks, factor)
        result = factor
        break
      end
    end
    puts "array #{array} result: #{result} max_size: #{max_size}"
    result < max_size ? result : max_size
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

  def each_block_has_peak?(array, peaks_indexes, range)
    has_peak = false
    index_point = 0
    Array(0..array.size).each do |n|
      if peaks_indexes.include?(n)
        has_peak = true
      end
      if index_point % range == (range - 1)
        return false if has_peak == false
        has_peak = false
      end
      index_point += 1
    end
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
end
