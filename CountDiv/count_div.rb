class CountDiv

  def solution(a, b, k)
    difference = b - a
    divmod_a = a.divmod(k)[1]
    difference -= 1 if difference > 0 # to take into account only elements between
    a_is_an_element = ( divmod_a == 0 )
    b_is_an_element = ( b % k == 0 )
    elements_sum = ((difference + divmod_a) / k)
    elements_sum += 1 if a_is_an_element
    elements_sum += 1 if b_is_an_element && a != b
    elements_sum
  end

end
