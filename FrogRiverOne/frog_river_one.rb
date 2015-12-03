class FrogRiverOne

  def solution(x, a)
    seconds = 0
    needed_leafs = Array(1..x)
    needed_leafs.delete(a.shift)
    until needed_leafs.empty? do
      needed_leafs.delete(a.shift)
      seconds += 1
    end
    seconds
  end

end
