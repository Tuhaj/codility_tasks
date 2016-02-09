class Dominator

  def solution(array)
    numbers = Hash.new(0)
    max = [0, 0]
    domination_number = ( array.size / 2 )
    array.each do |number|
      numbers[number] += 1
      number_with_count = [number, numbers[number]]
      max = number_with_count if number_with_count[1] > max[1]
    end
    domination_number < max[1] ? array.find_index(max[0]) : -1
  end
end
