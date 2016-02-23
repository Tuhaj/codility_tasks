class MaxProfit

  def solution(array)
    buy = array.first
    profit = 0
    array.each_with_index do |el, index|
      next if index == 0
      if el > buy
        potential_profit = el - buy
        profit = potential_profit if potential_profit > profit
      else
        buy = el
      end
    end
    profit
  end

end
