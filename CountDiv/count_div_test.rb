require_relative 'count_div'

describe CountDiv do
  it "should return the number of integers within the range 1 - 6 that are divisible by 2" do
    expect(subject.solution(1, 6, 2)).to eql(3)
  end

  it "should return the number of integers form the test" do
    expect(subject.solution(6, 12, 2)).to eql(4)
  end

  it "should return one element if range is 0" do
    expect(subject.solution(0, 1, 3)).to eql(1)
  end

  it "should return one element if it is on the edge of the range" do
    expect(subject.solution(0, 0, 11)).to eql(1)
  end

  it "should return one element if it is on both edges of the range" do
    expect(subject.solution(0, 4, 2)).to eql(3)
  end

  it "should returns good answer for simple input" do
    expect(subject.solution(11, 345, 17)).to eql(20)
  end

  it "should get one element from a range" do
    expect(subject.solution(3, 5, 4)).to eql(1)
  end

  it "should get one element extream range" do
    expect(subject.solution(11, 13, 2)).to eql(1)
  end

end
