class FrogJump

def solution(x, y, d)
  distance_in_jumps = ( y - x ).to_f / d
  distance_in_jumps.ceil
end

end
