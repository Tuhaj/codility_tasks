class StoneWall

  def solution(array)
    possible_levels = []
    last_level = 0
    blocks = 0

    array.each do |level|
      blocks += 1 if level > last_level
      if level < last_level
        if possible_levels.include? level
          possible_levels = possible_levels.select{|el| el <= level}
          next
        else
          possible_levels = possible_levels.select{|el| el <= level}
          blocks += 1
        end
      end
      possible_levels << level
      last_level = level
    end
    blocks
  end

end
