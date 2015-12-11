class PermCheck
  def solution(array)
    max  = array.max
    size = array.size
    return 0 if size < max
    permutation = [0] * (max + 1)
    array.each do |el|
      permutation_element = permutation[el]
      permutation_element == 0 ? permutation_element = 1 : ( return 0 )
    end
    1
  end
end
