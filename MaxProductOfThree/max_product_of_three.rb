class MaxProductOfThree
  def solution(array)
    array.sort!
    array[-3] * array[-2] * array[-1]
  end
end
