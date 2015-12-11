# https://codility.com/programmers/task/missing_integer/
class MissingInteger

  def counting_elements(array)
    # generates meta-array
    # index - value of the array
    # value - times the value occures
    n = array.size
    max = array.max
    min = array.min
    count = [0] * (max + 1)
    Array(0..n-1).each do |index|
      if array[index] >= 0
        count[array[index]] += 1
      end
    end
    count
  end

  def solution(array)
    counted_elements = counting_elements(array)
    return 1 if counted_elements.empty?
    counted_elements.each_with_index do |element, index|
      next if index == 0 # removes counters for 0
      return index if element == 0
    end
    array.max + 1
  end
end
