require_relative "max_slice_sum"

describe MaxSliceSum do
  it "returns correct solution" do
    array = [3, 2, -6, 4, 0]
    expect(subject.solution(array)).to eql 5
  end

  it "returns correct solution, when it is a one element in the array" do
    array = [ 3, 2, -6, 7, 0 ]
    expect(subject.solution(array)).to eql 7
  end

  it "returns correct solution for simple input" do
    array = [ -2, 1 ]
    expect(subject.solution(array)).to eql 1
  end

  it "returns correct solution for single element array" do
    array = [ -10]
    expect(subject.solution(array)).to eql -10
  end
end
