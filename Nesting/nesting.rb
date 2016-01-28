class Nesting
  def solution(a)
    open = 0
    a.split('').each do |bracket|
      open += 1 if bracket == "("
      open -= 1 if bracket == ")"
      return 0 if open < 0
    end
    open == 0 ? 1 : 0
  end
end
