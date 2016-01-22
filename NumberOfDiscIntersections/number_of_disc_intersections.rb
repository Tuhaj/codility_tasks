class NumberOfDiscIntersections
  def solution(array)
    return 0 if array.empty?
    intersections = 0
    openings = []
    closings = []
    array.each_with_index do |radius, index|
      opening = index - radius
      closing = index + radius
      openings << opening
      closings << closing
    end
    openings.sort!
    closings.sort!
    puts "#{openings.inspect}"
    puts "#{closings.inspect}"
    first_element = openings.first
    last_element = closings.last
    size = (first_element - last_element).abs + 1
    flat_array = Array.new(size, 0)
    openings.each do |opening|
      flat_array[opening - first_element] += 1
    end
    closings.each do |closing|
      flat_array[closing - first_element] -= 1
    end
    open = 0
    flat_array.each do |el|
      if el > 0
        open += el
      elsif el < 0
        intersections += open
        open += el
      end
    end
    intersections
  end
end

# sorting array of arrays sorts by first element:
# a = [[1,5], [-1,3], [0, 1], [2,4]]
# a.sort! = [[-1, 3], [0, 1], [1, 5], [2, 4]]




    # count = 0
    # index_of_zero = 0
    # point_owners = Array.new(array.size, 0)
    # array.each_with_index do |radius, index|
    #   open_point = index_of_zero + index - radius
    #   close_point = index_of_zero + index + radius
    #   if open_point < 0
    #     last_index_of_zero = index_of_zero
    #     index_of_zero = -open_point if open_point < last_index_of_zero
    #     prefix = Array.new((index_of_zero - last_index_of_zero), 0)
    #     point_owners = prefix + point_owners unless prefix.empty?
    #   end
    #   Array(open_point..close_point).each do |index|
    #     point_owners[index] ||= 0
    #     point_owners[index] = point_owners[index] + 1
    #   end
    #   max = point_owners[open_point..close_point].max
    #   count += max
    # end
    # count
