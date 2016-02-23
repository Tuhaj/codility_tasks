require_relative 'max_profit'

describe MaxProfit do
  it "returns correct solution" do
    array = [23171, 21011, 21123, 21366, 21013, 21367]
    expect(subject.solution(array)).to eql 356
  end
end
