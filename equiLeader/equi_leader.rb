class EquiLeader
  def solution(array)
    numbers = Hash.new(0)
    max = [0, 0]
    leader = ( array.size / 2 )
    array.each do |number|
      numbers[number] += 1
      number_with_count = [number, numbers[number]]
      max = number_with_count if number_with_count[1] > max[1]
    end
    return 0 if leader >= max[1]

    candidate = max[0]
    equi_leaders = 0
    left_size = 0
    right_size = array.size
    left_leader_count = 0
    right_leader_count = max[1]

    array.each do |number|
      left_size += 1
      right_size -= 1
      if number == candidate
        left_leader_count += 1
        right_leader_count -= 1
      end
      is_left_leader = (left_size / 2) < left_leader_count
      is_right_leader = (right_size / 2) < right_leader_count
      equi_leaders += 1 if is_left_leader && is_right_leader
    end
    equi_leaders
  end
end
