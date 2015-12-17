class PassingCars

  def prefix_sums(array)
    size = array.size
    prefixes = Array.new(size, 0)
    array.each_with_index do |element, index|
      prefixes[index] = prefixes[index - 1] + element
    end
    prefixes
  end

  def solution(array)
    array.reverse!
    size = array.size
    count = 0
    prefixes = Array.new(size, 0)
    array.each_with_index do |element, index|
      if element == 0
        prefixes[index] = prefixes[index - 1]
        count += prefixes[index - 1]
        return -1 if count > 10 ** 9
      else
        prefixes[index] = prefixes[index - 1] + element
      end
    end
    count
  end
end
