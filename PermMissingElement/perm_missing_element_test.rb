require_relative 'perm_missing_element'

describe PermMissingElement do
  it "should return missing element" do
    array = [2, 3, 1, 5]
    expect(subject.solution(array)).to eql(4)
  end

  it "should behave when empty" do
    array = []
    expect(subject.solution(array)).to eql(1)
  end

  it "should behave when one element given" do
    array = [2]
    expect(subject.solution(array)).to eql(1)
  end

  it "should return first missing element" do
    array = [2,3,4,5]
    expect(subject.solution(array)).to eql(1)
  end

  it "should return last missing element" do
    array = [1,2,3,4,5]
    expect(subject.solution(array)).to eql(6)
  end
end
