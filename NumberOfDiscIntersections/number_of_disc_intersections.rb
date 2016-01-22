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
    minimum = openings.first
    minimum = 0 if minimum > 0
    last_element = closings.last
    size = (minimum - last_element).abs + 1
    flat_array = Array.new(size*2, 0)
    openings.each do |opening|
      even_index = 2*(opening - minimum)
      flat_array[even_index] += 1
    end
    closings.each do |closing|
      odd_index = 2*(closing - minimum)+1
      flat_array[odd_index] -= 1
    end
    open = 0
    flat_array.each do |el|
      if el > 0
        open += el
      elsif el < 0
        (-el).times do
          intersections += (open -1) if open > 1
          open -= 1
        end
      end
    end
    intersections
  end
end

