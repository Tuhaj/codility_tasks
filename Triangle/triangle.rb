class Triangle
  def solution(array)
    array.sort!
    first_number = array[0]
    second_number = array[1]
    array.drop(2).each do |number|
      if is_in_triangle_condition(first_number, second_number, number)
        return 1
      else
        first_number = second_number
        second_number = number
      end
    end
    0
  end

  def is_in_triangle_condition(a, b, c)
    a + b >= c &&
    b + c >= a &&
    a + c >= b
  end

end
