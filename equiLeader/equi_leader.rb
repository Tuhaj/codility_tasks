class EquiLeader
  def solution(array)
    equi_leaders = []
    candidate = find_leader(array)
    array.size.times do |index|
      if check_candidate(candidate, (array[0..index]))
        equi_leaders << index if check_candidate(candidate, array[(index+1)..-1])
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
    leader = candidate if check_candidate(candidate, array)
  end

  def check_candidate(candidate, array)
    count = 0
    array.each {|el| count += 1 if (el == candidate) }
    count > array.size / 2
  end
end
