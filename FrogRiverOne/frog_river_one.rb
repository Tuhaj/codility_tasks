class FrogRiverOne

  def solution(x, a)
    seconds = 0
    needed_leaves = Array(1..x)
    needed_leaves.each do |el|
      index = a.find_index(el)
      return -1 if index == nil
      seconds = [a.find_index(el), seconds].max
    end
    seconds
  end

end
