require_relative "count_factors"

describe CountFactors do
  it "should return number of factors" do
    number = 24
    expect(subject.solution(number)).to eql 8
  end

  it "should return correct number of factors for one" do
    number = 1
    expect(subject.solution(number)).to eql 1
  end

  it "should return correct number of factors for a square number" do
    number = 16
    expect(subject.solution(number)).to eql 5
  end
end
