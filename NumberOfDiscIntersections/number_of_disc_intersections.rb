class NumberOfDiscIntersections
  def solution(array)
    intersections = 0
    values_hash = Hash.new(0)
    array.each_with_index do |radius, index|
      opening = (index - radius) * 2
      closing = (index + radius) * 2 + 1
      values_hash[opening] += 1
      values_hash[closing] -= 1
    end
    values_hash = values_hash.sort.to_h

    open = 0
    values_hash.each do |key, value|
      open += value if value > 0
      if value < 0
        (-value).times do
          intersections += (open -1) if open > 1
          return -1 if intersections > 10_000_000
          open -= 1
        end
      end
    end
    intersections
  end
end
