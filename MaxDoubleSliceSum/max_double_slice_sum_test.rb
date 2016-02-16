require_relative "max_double_slice_sum"

describe MaxDoubleSliceSum do
  it "returns max double slice" do
    array = [3, 2, 6, -1, 4, 5, -1, 2]
    expect(subject.solution(array)).to eql(17)
  end

  it "returns max double slice for small array" do
    array = [1,1,1]
    expect(subject.solution(array)).to eql(0)
  end

  it "#max_slice returns the biggest slice" do
    array = [3, 2, 6, -1, 4, 5, -1, 2]
    expect(subject.max_slice(array)).to eql(20)
  end

  it "#max_slice returns the biggest slice for one number slice" do
    array = [1, 2, -3, 4, -10]
    expect(subject.max_slice(array)).to eql(4)
  end
end
