class CountDiv

  def solution(a, b, k)
    difference = b - a
    difference -= 1 if difference > 0
    all_elements = (difference / k)
    a_is_an_element = ( a % k == 0 )
    b_is_an_element = ( b % k == 0 )
    if a_is_an_element
      all_elements += 1
    end
    if b_is_an_element && a != b
      all_elements += 1
    end
    all_elements
  end

end
