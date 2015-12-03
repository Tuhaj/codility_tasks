require_relative 'frog_river_one'

describe FrogRiverOne do
  it "should return time for all leaves to fall" do
    array = [1, 3, 1, 4, 2, 3, 5, 4]
    expect(subject.solution(5, array)).to eql(6)
  end

  it "should return time if array has one element" do
    array = [1]
    expect(subject.solution(1, array)).to eql(0)
  end

  it "should return -1 when the frog cannot jump to the other side" do
    array = [1,3]
    expect(subject.solution(3, array)).to eql(-1)
  end
end
