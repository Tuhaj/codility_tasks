class StoneWall

  def solution(array)
    possible_levels = [0] * array.size
    blocks = 0
    index = 0

    array.each do |level|
      while index > 0 && possible_levels[index - 1] > level
        index -= 1
      end
      if index > 0 && possible_levels[index - 1] == level
        next
      else
        blocks += 1
        possible_levels[index] = level
        index += 1
      end
    end
    blocks
  end
end
