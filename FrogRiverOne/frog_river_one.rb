class FrogRiverOne

  def solution(x, a)
    seconds = 0
    needed_leaves = Array(1..x)
    needed_leaves.delete(a.shift)
    until needed_leaves.empty? || a.empty? do
      needed_leaves.delete(a.shift)
      seconds += 1
    end
    return -1 unless needed_leaves.empty?
    seconds
  end

end
