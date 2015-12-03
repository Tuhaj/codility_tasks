class PermMissingElement

  def solution(a)
    return 1 if a.empty?
    all_elements = Array( 1..(a.size + 1) )
    ( all_elements - a ).first
  end

end
