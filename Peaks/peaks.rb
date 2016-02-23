class Peaks
  def solution(array)
    peaks = get_peaks(array)
    return 0 if peaks.count == 0
    return 1 if peaks.count == 1
    size = array.size
    max_distance = max_distance_between_peaks(peaks, size)
    puts "max distance #{max_distance}, size over distance: #{size / (max_distance + 1)}"
    ( size / (max_distance + 1) )
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

  def max_distance_between_peaks(peaks_indexes, array_size)
    previous_peak = peaks_indexes.first
    distances = [previous_peak]
    peaks_indexes.each_with_index do |peak, index|
      next if index == 0
      distance = previous_peak - peak
      distances << distance
    end
    last_peak = peaks_indexes.last
    last_distance = array_size - last_peak - 1
    distances << last_distance
    distances.max
  end

  def get_factors(number)
    fractors = []
    root_of_number = (number ** ( 1.0 / 2) )
    if root_of_number % 1 == 0
      fractors << root_of_number.to_i
    end
    Array(1..root_of_number.floor).each do |divisor|
      if number % divisor == 0
        fractors << divisor
        fractors << ( number / divisor )
      end
    end
    fractors.sort
  end
end
