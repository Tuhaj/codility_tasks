class PermCheck
  def solution(array)
    array.sort!
    permutation = Array(1..array.last)
    array == permutation ? 1 : 0
  end
end
