class MaxProductOfThree
  def solution(array)
    array.sort!
    biggest_numbers = array[-3] * array[-2] * array[-1]
    smallest_numbers = array[0] * array[1] * array[-1]
    [biggest_numbers, smallest_numbers].max
  end
end
