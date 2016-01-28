class Nesting
  def solution(a)
    open = 0
    a.split('').each do |bracket|
      open += 1 if bracket == "("
      open -= 1 if bracket == ")"
      return 0 if open < 0
    end
    1
  end
end
