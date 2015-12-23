class Distinct
  def solution(array)
    array.sort!
    last_element = array[0]
    return 0 if last_element == nil
    counter = 1
    array.each do |el|
      if el != last_element
        last_element = el
        counter += 1
      end
    end
    counter
  end
end
