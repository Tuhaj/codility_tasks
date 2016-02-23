class CountFactors
  def solution(number)
    return 1 if number == 1
    root_of_number = (number ** ( 1.0 / 2) )
    if root_of_number % 1 == 0
      factors = 1
    else
      factors = 0
      root_of_number.floor
    end
    Array(1...root_of_number).each do |divisor|
      factors += 2 if number % divisor == 0
    end
    factors
  end
end
