require_relative 'frog_jump'

describe FrogJump do
  it "should return minimal number of jumps" do
    expect(subject.solution(10, 85, 30)).to eql(3)
  end

  it "should return number of jumps if distance gets equal with target" do
    expect(subject.solution(10, 100, 10)).to eql(9)
  end

  it "should return number of jumps frog is already in its place" do
    expect(subject.solution(1, 1, 1)).to eql(0)
  end

  it "should return number of big jumps" do
    expect(subject.solution(1000, 1201, 100)).to eql(3)
  end
end
