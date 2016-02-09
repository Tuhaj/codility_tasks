class EquiLeader
  def solution(array)
    equi_leaders = []
    array.size.times do |index|
      first_leader = find_leader((array[0..index]))
      if first_leader != -1
        second_part = array[(index+1)..-1]
        second_leader = find_leader(second_part)
        if second_leader == first_leader
          equi_leaders << index
        end
      end
    end
    equi_leaders.size
  end

  def find_leader(array)
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
    leader
  end
end
