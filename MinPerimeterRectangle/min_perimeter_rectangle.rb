class MinPerimeterRectangle
  def solution(rectangle_area)
    root_from_area = rectangle_area ** 0.5
    if root_from_area % 1 == 0
      a = root_from_area.to_i
      b = root_from_area.to_i
    else
      divisors_from_largest = Array(1...root_from_area).reverse
      divisors_from_largest.each do |divisor|
        a = divisor
        break if rectangle_area % divisor == 0
      end
      b = rectangle_area / a
    end
    perimeter = 2 * (a + b)
  end
end
