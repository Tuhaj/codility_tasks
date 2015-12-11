class PermCheck
  def solution(array)
    max  = array.max
    size = array.size
    return 0 if size < max
    permutation = [0] * (max + 1)
    array.each do |el|
      permutation[el] == 0 ? permutation[el] = 1 : ( return 0 )
    end
    1
  end
end
