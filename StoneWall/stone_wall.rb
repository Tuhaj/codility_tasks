require "set"

class StoneWall

  def solution(array)
    possible_levels = SortedSet.new
    last_level = 0
    blocks = 0
    array.each do |level|
      if level > last_level
        blocks += 1
      else
        next if possible_levels.include? level
        possible_levels.reject! { |el| el > level }
        blocks += 1
      end
      possible_levels << level
      last_level = level
    end
    blocks
  end
end
