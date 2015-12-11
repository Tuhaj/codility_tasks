# https://codility.com/programmers/task/missing_integer/
class MissingInteger
  def solution(array)
    last_element = nil
    missing_element = 1
    array.sort!
    max = array.last
    array.each do |element, index|
      next if element <= 0 || last_element == element
      if element > missing_element
        return missing_element
      else
        missing_element += 1
      end
      last_element = element
    end
    missing_element
  end
end
