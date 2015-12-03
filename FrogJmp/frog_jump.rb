class FrogJump

def solution(x, y, d)
  jumps = 0
  while x < y do
    x += d
    jumps += 1
  end
  jumps
end

end
