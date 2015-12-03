class PermMissingElement

  def solution(a)
    all_elements = Array(1..a.max)
    missing_element = all_elements - a
    missing_element.first
  end

end
