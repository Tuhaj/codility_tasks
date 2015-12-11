require_relative 'missing_integer'

describe MissingInteger do
  it "should return missing integer" do
    array = [1, 3, 6, 4, 1, 2]
    expect(subject.solution(array)).to eql(5)
  end

  it "should return missing integer if it is greater than array size" do
    array = [1]
    expect(subject.solution(array)).to eql(2)
  end

  it "should return 1 there are no positive numbers" do
    array = [-1]
    expect(subject.solution(array)).to eql(1)
  end
end
