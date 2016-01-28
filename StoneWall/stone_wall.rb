class StoneWall

  def solution(array)
    possible_levels = []
    last_level = 0
    blocks = 0
    array.each do |level|
      if level > last_level
        blocks += 1
      else
        possible_levels = possible_levels.reject{|el| el > level}
        next if possible_levels.include? level
        blocks += 1
      end
      possible_levels << level
      last_level = level
    end
    blocks
  end

end
