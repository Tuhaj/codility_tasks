class CountDiv

  def solution(a, b, k)
    counter = 0
    Array(a...b).each do |element|
      if element % k == 0
        counter += 1
      end
    end
    counter
  end

end
