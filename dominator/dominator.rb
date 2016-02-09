class Dominator

  def solution(array)
    size = 0
    value = array.first
    array.each do |el|
      if (size == 0)
        size += 1
        value = el
      else
        value != el ? size -= 1 : size += 1
      end
    end
    candidate = -1
    candidate = value if (size > 0)
    leader = -1
    count = 0
    array.each do |el|
      count += 1 if (el == candidate)
    end
    leader = candidate if (count > array.size / 2)
    leader != -1 ? array.find_index(leader) : leader
  end
end
