require_relative 'count_div'

describe CountDiv do
  it "should return the number of integers within the range 1 - 6 that are divisible by 2" do
    expect(subject.solution(1, 6, 2)).to eql(2)
  end

  it "should return the number of integers form the test" do
    expect(subject.solution(6, 12, 2)).to eql(3)
  end

  it "should return empty array if range is 0" do
    expect(subject.solution(2, 2, 2)).to eql(0)
  end

  it "should return empty array if range is 0" do
    expect(subject.solution(0, 1, 3)).to eql(1)
  end

end
